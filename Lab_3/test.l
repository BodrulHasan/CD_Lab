%{
#include <stdio.h>
%}

%%
[a-zA-Z]      { printf("Letter: %s\n", yytext); }
[0-9]         { printf("Digit: %s\n", yytext); }
[ \t\n]+      ;   /* Ignore whitespace */
.             { printf("Other: %s\n", yytext); }
%%

int main() {
    printf("Enter text: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}