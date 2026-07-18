#include <iostream>
#include <fstream>
#include <regex>
using namespace std;

int main() {
  

    string mytext;
     ifstream MyReadFile("input.txt");
    regex pattern("[a-zA-Z]+[a-zA-Z0-9_]*");

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