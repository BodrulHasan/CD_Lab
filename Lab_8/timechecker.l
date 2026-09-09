%{
#include <stdio.h>
%}

%%

([01][0-9]|[2][0-3]):([0-5][0-9]) {
    printf("Valid\n");
}

\n {}

. {
    printf("Invalid\n");
}

%%

int yywrap()
{
    return 1;
}

int main()
{
    yyin = fopen("input.txt", "r");
    freopen("output.txt", "w", stdout);
    yylex();
    return 0;
}