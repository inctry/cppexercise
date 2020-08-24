//
// Created by Inctry on 2020/8/24.
//

#ifndef C___EXERCISE_TEXTQUERY_H
#define C___EXERCISE_TEXTQUERY_H

#include <cstring>
#include <memory>
#include <vector>
#include <iostream>
#include <map>
#include <set>
#include <fstream>
#include <sstream>
#include "QueryResult.h"

class QueryResult;

class TextQuery {
public:
    using line_no = std::vector<std::string>::size_type;
    TextQuery(std::ifstream &);
    QueryResult query(const std::string &) const;

private:
    std::shared_ptr<std::vector<std::string> > file;
    std::map<std::string, std::shared_ptr<std::set<line_no> > > wm;

};
TextQuery::TextQuery(std::ifstream &is) : file(new std::vector<std::string>){
    std::string text;
   // std::cout << std::getline(is, text);
    while(std::getline(is, text)) {
       // std::cout << text << "\n";
        file->push_back(text);
        line_no n = file->size() - 1;
        //std::cout << n << "\n";
        std::istringstream line(text);
        std::string word;
        while(line >> word) {
            auto &lines = wm[word];
            if(!lines)
                lines.reset(new std::set<line_no>() );
            lines->insert(n);
        }
    }
    //std::cout << 1;

}

QueryResult TextQuery::query(const std::string &sought) const {
    static std::shared_ptr<std::set<line_no> > nodata(new std::set<line_no>);

    auto lo = wm.find(sought);

    if(lo == wm.end()) return QueryResult(sought, file, nodata);
    else
        return QueryResult(sought, file, lo->second);
}

#endif //C___EXERCISE_TEXTQUERY_H
