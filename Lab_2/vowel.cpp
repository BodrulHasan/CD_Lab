#include <iostream>
#include <regex>
using namespace std;

int main() {
    string s;
    cout << "Enter a letter: ";
    cin >> s;

    regex pattern("[aeiouAEIOU]");

    if (regex_match(s, pattern))
        cout << "vowel" << endl;
    else
        cout << "consonant" << endl;

    return 0;
}