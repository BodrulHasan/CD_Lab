#include <iostream>
#include <regex>
using namespace std;

int main() {
    string s;
    cout << "Enter a string: ";
    cin >> s;
    

    regex pattern("^([A-Za-z]+|[0-9]+)$");

    if (regex_match(s, pattern))
    
        cout <<  "Matched\n";
    else
        cout << "Not Matched\n";

    return 0;
}