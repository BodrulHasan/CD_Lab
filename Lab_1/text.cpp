#include <iostream>
#include <regex>
using namespace std;

int main()
{   
    cout<<"Enter a string:";
    
       string s;
    cin >> s;

    regex pattern("[a-z]");
    if (regex_match(s, pattern)) {
        cout << "Matched" << endl;
    } else {
        cout << "not matched" << endl;
    }
}