#include <iostream>

#include "TextQuery.h"
#include "QueryResult.h"

void runQuery(std::ifstream &is) {
    TextQuery tq(is);

    while(true) {
        std::cout <<"Enter a word to look for or press q to quit" << std::endl;
        std::string s;
        std::cin >> s;
        if(s == "q") break;
        print(std::cout, tq.query(s));
        std::cout << std::endl;
    }
}

int main() {
    std::ifstream in("test.txt");
    //std::cout << in;
    runQuery(in);
    return 0;
}
