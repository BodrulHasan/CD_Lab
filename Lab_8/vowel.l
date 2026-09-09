%{
#include <stdio.h>
int i;


%}

%%

[a-zA-Z]+   { int vowel = 0;
    for(i = 0; yytext[i] != '\0'; i++)
if(yytext[i] == 'a' || yytext[i] == 'e' ||
           yytext[i] == 'i' || yytext[i] == 'o'||
           yytext[i] == 'u' || yytext[i] == 'A'||
           yytext[i] == 'E' || yytext[i] == 'I'||
           yytext[i] == 'O' || yytext[i] == 'U'||)
        {
            vowel++;
        }
 
printf("Number of Vowels = %d\n", vowel);

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
