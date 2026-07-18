#include<iostream>
#include<regex>
using namespace std;

int main (){

    cout<<"Enter a string:";
    string s;
    cin >> s ;
    

    regex letterPattern ("[a-zA-Z]+");
    regex digitPattern ("[0-9]+");


    if (regex_match(s,letterPattern)){
        cout << s << " Letters" << endl;
    }
    else if  (regex_match(s,digitPattern)) {
        cout << s << " Digits" << endl;
    }
    else{
        cout << "Not match" << endl;
    }

}
