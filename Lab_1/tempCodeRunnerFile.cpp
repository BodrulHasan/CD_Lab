#include<iostream>
#include<regex>
using namespace std;

int main(){
    string s;
    cin>>s;

    regex pattern("[x]");
    if(regex_match(s, pattern)){
        cout<<"Matched"<<endl;
    }
    else {
        cout<<"Not Matched"<<endl;
    }
}