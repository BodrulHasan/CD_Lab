%{
#include <stdio.h>
int up_letter=0;
int low_letter=0;
int digit=0;
int keyword=0;
%}

%%
(int)     {printf("keyword Match");}
[0-9]     {digit++;}
[a-z]      { low_letter++; }
[A-Z]      { up_letter++; }

%%

int yywrap()
{
    return 1;
}

int main()
{
    yylex();

    printf("Lowercase: %d\n", low_letter);
    printf("Uppercase: %d\n", up_letter);
    printf("Digit: %d\n", digit);
    
    return 0;
}