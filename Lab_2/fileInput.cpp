#include <iostream>
#include <fstream>
#include <regex>
using namespace std;

int main() {
    // ifstream fin("input.txt");

    string mytext;
    ifstream MyReadFile("input.txt");

    while (getline (MyReadFile, mytext))
    {
        cout<<mytext;
    }
    


    return 0;
}