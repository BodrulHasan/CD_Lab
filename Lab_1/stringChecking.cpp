#include <iostream>
#include <regex>
using namespace std;

int main()
{   
    cout << "Enter a string: ";

    string s;
    cin >> s;

    regex letterPattern("^[a-zA-Z]+$");
    regex digitPattern("^[0-9]+$");

    if (regex_match(s, letterPattern)) {
        cout << s << " letters" << endl;
    }
    else if (regex_match(s, digitPattern)) {
        cout << s << " digits" << endl;
    }
    else {
        cout << s << " not matched" << endl;
    }

    return 0;
}