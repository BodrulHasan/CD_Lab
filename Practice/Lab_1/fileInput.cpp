#include<iostream>
#include<fstream>
using namespace std;

int main (){
    ifstream myReadfile("fileInput.txt");
    string mytext;

    while (getline(myReadfile,mytext))
    {
        cout << mytext << endl;
    }
    

}