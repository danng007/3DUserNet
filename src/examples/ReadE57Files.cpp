//
// Created by wantao on 06/11/17.
//

#include "ReadE57Files.h"
#include "writeLAS.h"
class get_at
        : public static_visitor<boost::variant<double, int64_t> >
{
    size_t at;
public:
    get_at(size_t at_) : at(at_) {}
    template <typename T>
    boost::variant<double, int64_t> operator()( T & operand ) const
    {
        return operand[at];
    }
};
path
path_from_guid(
        string guid
) {
    string name;
    for (string::iterator s = guid.begin(); s != guid.end(); ++s) {
        if (portable_directory_name(string(1,*s)))
            name += *s;
        else
            name += "_";
    }
    return path(name);
}
ReadE57Files::ReadE57Files()
{
    inputPath  = "/home/wantao/Desktop/3DUserNet/TestData/pumpMult.e57";
    outputPath = "/home/wantao/Desktop/3DUserNet/TestData/pumpMult";

//    infOutputPath = "/home/wantao/Desktop/3DUserNet/TestData/pumpMult/pumpMult.inf";
}
ReadE57Files::ReadE57Files(string inputP, string outputP)
{
    inputPath  = inputP;
    outputPath = outputP;
//    infOutputPath = "/home/wantao/Desktop/3DUserNet/TestData/pumpMult/pumpMult.inf";
}
ReadE57Files::~ReadE57Files() {

}
/*
void ReadE57Files::passFileToReader() {
    try {
        /// Read file from disk
        ImageFile imf("/home/wantao/Desktop/3DUserNet/TestData/pumpASpherical.e57", "r");
        StructureNode root = imf.root();

        /// Make sure vector of scans is defined and of expected type.
        /// If "/data3D" wasn't defined, the call to root.get below would raise an exception.
        if (!root.isDefined("/data3D")) {
            cout << "File doesn't contain 3D images" << endl;
        }
        Node n = root.get("/data3D");
        if (n.type() != E57_VECTOR) {
            cout << "bad file" << endl;
        }

        /// The node is a vector so we can safely get a VectorNode handle to it.
        /// If n was not a VectorNode, this would raise an exception.
        VectorNode data3D(n);

        /// Print number of children of data3D.  This is the number of scans in file.
        int64_t scanCount = data3D.childCount();
        cout << "Number of scans in file:" << scanCount << endl;

        /// For each scan, print out first 4 points in either Cartesian or Spherical coordinates.
        for (int scanIndex = 0; scanIndex < scanCount; scanIndex++) {
            /// Get scan from "/data3D", assume its a Structure (else get exception)
            StructureNode scan(data3D.get(scanIndex));
            cout << "got:" << scan.pathName() << endl;

            /// Get "points" field in scan.  Should be a CompressedVectorNode.
            CompressedVectorNode points(scan.get("points"));
            cout << "got:" << points.pathName() << endl;

            /// Call subroutine in this file to print the points
            printPoints(imf, points);
        }

        imf.close();
    } catch(E57Exception& ex) {
        ex.report(__FILE__, __LINE__, __FUNCTION__);

    } catch (std::exception& ex) {
        cerr << "Got an std::exception, what=" << ex.what() << endl;

    } catch (...) {
        cerr << "Got an unknown exception" << endl;

    }
}
void ReadE57Files::printPoints(ImageFile imf, CompressedVectorNode points) {
    StructureNode proto(points.prototype());
    cout<<"proto child count: "<<proto.childCount()<<endl;
    for (int j = 0; j < proto.childCount(); ++j) {
        cout<<endl;
        switch(proto.get(j).type()) {
            case e57::E57_FLOAT:
                cout<<"f ";
                break;
            case e57::E57_SCALED_INTEGER:
                cout<<"Si ";
                break;
            case e57::E57_INTEGER:
                cout<<"i ";
                break;
        }
    }
    /// The prototype should have a field named either "cartesianX" or "sphericalRange".
    if (proto.isDefined("cartesianX") && proto.isDefined("cartesianY") && proto.isDefined("cartesianZ")) {
#if 1  //??? pick one?

        /// Make a list of buffers to receive the xyz values.

        const int N = points.childCount();
        vector<SourceDestBuffer> destBuffers;
        double x[N];     destBuffers.push_back(SourceDestBuffer(imf, "cartesianX", x, N, true));
        double y[N];     destBuffers.push_back(SourceDestBuffer(imf, "cartesianY", y, N, true));
        double z[N];     destBuffers.push_back(SourceDestBuffer(imf, "cartesianZ", z, N, true));

        /// Create a reader of the points CompressedVector, try to read first block of N points
        /// Each call to reader.read() will fill the xyz buffers until the points are exhausted.
        CompressedVectorReader reader = points.reader(destBuffers);
        unsigned gotCount = reader.read();
        cout << "  got first " << gotCount << " points" << endl;

        /// Print the coordinates we got
        for (unsigned i=0; i < gotCount; i++)
            cout << "  " << i << ". x=" << x[i] << " y=" << y[i] << " z=" << z[i] << endl;
#else
        /// Make a list of buffers to receive the xyz values.
        vector<SourceDestBuffer> destBuffers;
        int64_t columnIndex[10];     destBuffers.push_back(SourceDestBuffer(imf, "columnIndex", columnIndex, 10, true));

        /// Create a reader of the points CompressedVector, try to read first block of 4 columnIndex
        /// Each call to reader.read() will fill the xyz buffers until the points are exhausted.
        CompressedVectorReader reader = points.reader(destBuffers);
        unsigned gotCount = reader.read();
        cout << "  got first " << gotCount << " points" << endl;

        /// Print the coordinates we got
        for (unsigned i=0; i < gotCount; i++)
            cout << "  " << i << ". columnIndex=" << columnIndex[i] << endl;
#endif
        reader.close();
    } else if (proto.isDefined("sphericalRange")) {
        //??? not implemented yet
    } else
        cout << "Error: couldn't find either Cartesian or spherical points in scan" << endl;
}
*/
 void ReadE57Files::unpackVersionRead() {

    try {

        ImageFile imf(inputPath, "r");
        StructureNode root = imf.root();

        /// Make sure vector of scans is defined and of expected type.
        /// If "/data3D" wasn't defined, the call to root.get below would raise an exception.
        if (!root.isDefined("/data3D")) {
            cout << "File doesn't contain 3D images" << endl;
        }
//    path dst;
//    dst = StringNode(root.get("guid")).value();
        create_directories(outputPath);
        //cout<<"GUID: "<<StringNode(root.get("guid")).value()<<endl;
//
        Node n = root.get("/data3D");
        /// The node is a vector so we can safely get a VectorNode handle to it.
        /// If n was not a VectorNode, this would raise an exception.
        VectorNode data3D(n);
        if (root.isDefined("data3D")) {
            VectorNode data3D(root.get("data3D"));
            for (int64_t i=0; i<data3D.childCount(); ++i) {
                string fmt = "";
                StructureNode            scan(data3D.get(i));
                CompressedVectorNode     points(scan.get("points"));
                StructureNode            prototype(points.prototype());
                vector<SourceDestBuffer> sdb;
                const size_t buf_size = 1024;
                vector<boost::variant<vector<double>, vector<int64_t> > >  buf;
                string pointrecord;

                string comma;
                for (int64_t i=0; i<prototype.childCount(); ++i) {
                    switch(prototype.get(i).type()) {
                        case e57::E57_FLOAT:
                        case e57::E57_SCALED_INTEGER:
                            buf.push_back(vector<double>(buf_size));

                            fmt += comma +"%g";
                            break;
                        case e57::E57_INTEGER:
                            buf.push_back(vector<int64_t>(buf_size));

                            fmt += comma +"%d";
                            break;
                    }
                    if (comma.empty()) comma = ",";
                }

                comma.clear();
                for (size_t i=0; i<prototype.childCount(); ++i) {
                    Node n(prototype.get(i));
                    pointrecord += " " + n.elementName();
                    if (comma.empty()) comma = ",";
                    switch(n.type()) {
                        case e57::E57_FLOAT:
                        case e57::E57_SCALED_INTEGER:
                            sdb.push_back(
                                    SourceDestBuffer(
                                            imf
                                            , n.elementName()
                                            , &get<vector<double> >(buf[i])[0]
                                            , buf_size
                                            , true
                                            , true
                                    )
                            );
                            break;
                        case e57::E57_INTEGER:
                            sdb.push_back(
                                    SourceDestBuffer(
                                            imf
                                            , n.elementName()
                                            , &get<vector<int64_t> >(buf[i])[0]
                                            , buf_size
                                            , true
                                            , true
                                    )
                            );
                            break;
                        default:
                            throw(runtime_error(
                                    "prototype contains illegal type")
                            );
                    }
                }

                string fileName = StringNode(scan.get("guid")).value();
                boost::filesystem::ofstream inf(outputPath/path_from_guid(fileName+".inf"));
                inf << "Variables: "<< prototype.childCount()<<endl;
                inf << "pointrecord: " << pointrecord << endl;
                inf << "format:      " << fmt << endl;
                inf.close();

                CompressedVectorReader rd(points.reader(sdb));
                path csvname(path_from_guid(fileName+".csv"));
                boost::filesystem::ofstream ocsv(outputPath/csvname);
                ostream& out(ocsv); // needed to fix ambiguity for << operator on msvc
                cout << "unpacking: " << outputPath << " ... ";
                unsigned count;
                uint64_t total_count(0);

                format tfmt(fmt);
                tfmt.exceptions( all_error_bits ^ too_many_args_bit );
                while(count = rd.read()) {
                    total_count += count;
                    for (size_t i=0; i<count; ++i) {
                        for (size_t j=0; j<buf.size(); ++j)
                            tfmt = tfmt % apply_visitor(get_at(i),buf.at(j));
                        out << tfmt << endl;
                    }
                }
                cout << " total points: " << total_count << endl;

                ocsv.close();
                cout<<"Own File Name: "<<csvname<<endl;

                fileNames.push_back(csvname.string().substr(0,csvname.string().length()-4));
            }
        }
    }catch(E57Exception& e) {
        e.report(__FILE__, __LINE__, __FUNCTION__);
        //return -1;
    }
    catch(exception& e) {
        cerr << e.what() << endl;
        //return -1;
    }
    catch(...) {
        cerr << "unknown exception" << endl;
        //return -1;
    }


}
void ReadE57Files::runWriter(){
    cout<<"Begin Writer: multi files"<<endl;
    writeLAS *writer = new writeLAS();
    writer->setRoot(outputPath);
    for (int i = 0; i < fileNames.size(); ++i) {
        writer->analyInf(fileNames[i]);
    }
}
void ReadE57Files::runIntoOneWriter() {
    cout<<"Begin Writer: single file"<<endl;
    writeLAS *writer = new writeLAS();
    writer->setRoot(outputPath);
    writer->writeSingle(fileNames);

}