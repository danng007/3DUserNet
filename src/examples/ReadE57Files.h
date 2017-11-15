//
// Created by wantao on 06/11/17.
//
#include <E57Foundation.h>
using e57::Node;
using e57::ImageFile;
using e57::StructureNode;
using e57::VectorNode;
using e57::CompressedVectorNode;
using e57::StringNode;
using e57::IntegerNode;
using e57::ScaledIntegerNode;
using e57::FloatNode;
using e57::StringNode;
using e57::BlobNode;
using e57::E57Exception;
using e57::E57Utilities;
using e57::ustring;
using e57::SourceDestBuffer;
using e57::CompressedVectorReader;
using e57::int64_t;
using e57::uint64_t;

#include <iostream>
using std::cout;
using std::cerr;
using std::endl;
using std::ostream;

#include <exception>
using std::exception;

#include <stdexcept>
using std::runtime_error;

#if defined(_MSC_VER)
#   include <memory>
#else
#   include <tr1/memory>
#endif
using std::tr1::shared_ptr;

#include <string>
using std::string;

#include <vector>
using std::vector;

#include <boost/config.hpp>
//
//#include <boost/program_options.hpp>
//using boost::program_options::variables_map;
//using boost::program_options::options_description;
//using boost::program_options::positional_options_description;
//using boost::program_options::store;
//using boost::program_options::command_line_parser;
//using boost::program_options::value;

#include <boost/filesystem.hpp>
using boost::filesystem::path;
using boost::filesystem::create_directories;
using boost::filesystem::portable_directory_name;

#include <boost/filesystem/fstream.hpp>
using boost::filesystem::ofstream;

#include <boost/variant.hpp>
using boost::variant;
using boost::get;
using boost::static_visitor;
using boost::apply_visitor;

#include <boost/format.hpp>
using boost::format;
using boost::io::too_many_args_bit;
using boost::io::too_few_args_bit;
using boost::io::all_error_bits;

#ifndef E57REFIMPL_READE57FILES_H
#define E57REFIMPL_READE57FILES_H


class ReadE57Files {
public:
    ReadE57Files();
    ReadE57Files(string inputP, string outputP);
    ~ReadE57Files();
    void printPoints(ImageFile imf, CompressedVectorNode points);
    void passFileToReader();
    void unpackVersionRead();
    void runWriter();
    void runIntoOneWriter();
private:
    string infOutputPath;
    string outputPath;
    string inputPath;
    vector<string> fileNames;

};


#endif //E57REFIMPL_READE57FILES_H
