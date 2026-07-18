#include<iostream>
#include<fstream>
#include<regex>
using namespace std;

int main(){
    string myText;

    ifstream MyReadFile("input.txt");

    while (getline (MyReadFile, myText)) {
      cout << myText;
    }
    //regex pattern("[x]");
    //if(regex_match(s, pattern)){
       // cout<<"Matched"<<endl;
    //}
    //else {
    //    cout<<"Not Matched"<<endl;
    //}
}
