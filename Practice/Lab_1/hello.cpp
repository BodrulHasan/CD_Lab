#include<iostream>
using namespace std;

int main (){


    int age;
    scanf("%d", &age);

    if (age < 0) {
        printf("Invalid age\n");
        return 2;
    }

    printf("Valid age\n");
    return 0;
}

