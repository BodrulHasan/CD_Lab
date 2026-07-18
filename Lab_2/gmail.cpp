#include <iostream>
#include <fstream>
#include <regex>
using namespace std;

int main() {
  

    string mytext;
     ifstream MyReadFile("input.txt");
    regex pattern("[a-zA-Z]+[0-9 a-zA-Z]*@(gmail.com|email.com|yahoo.com)");

    while (getline (MyReadFile, mytext))
      

    {
     if(regex_match(mytext, pattern )){
         cout<<"Matched"<<endl;}

        else {
        cout<<"Not Matched"<<endl;
       }
    }
    


    return 0;
}