//
// Created by Inctry on 2020/8/24.
//

#ifndef C___EXERCISE_QUERYRESULT_H
#define C___EXERCISE_QUERYRESULT_H

#include <cstring>
#include <memory>
#include <map>
#include <iostream>
#include <set>
#include <vector>
#include <ostream>

class QueryResult {
public:
    friend std::ostream& print(std::ostream &, const QueryResult &);

    using line_no = std::vector<std::string>::size_type;

    QueryResult( std::string s,
             std::shared_ptr<std::vector<std::string> > file,
             std::shared_ptr<std::set<line_no> > lines
    ) : sought(s), file(file), lines(lines)
    {};

private:
    std::string sought;
    std::shared_ptr<std::vector<std::string> > file;
    std::shared_ptr<std::set<line_no> > lines;


};


std::ostream& print(std::ostream &os, const QueryResult &qr) {
    os << qr.sought << " occurs " << qr.lines->size() << " times" << std::endl;

    for(auto num : *(qr.lines)) {
        os << "(line " << num+1 << ") " << *(qr.file->begin()+num) << std::endl;
    }
    return os;
}

#endif //C___EXERCISE_QUERYRESULT_H
