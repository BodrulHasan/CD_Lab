%{
#include <stdio.h>
%}

%%

([0-9]{9}+(@)[a-z]+(.edu.bd)) {
    printf("\nValid\n");
}

\n {}

. {
    printf("Invalid");
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("mailinput.txt", "r");
    freopen("mailoutput.txt", "w", stdout);
    yylex();
    return 0;
}