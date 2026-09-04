%{

int i;
%}

%%

[01]+   { int zero = 0, one = 0;
    

    for(i = 0; yytext[i] != '\0'; i++)
    {
        if(yytext[i] == '0')
            zero++;
        else
            one++;
    }

    if(zero % 2 == 1 && one % 2 == 0)
        printf("Accepted\n");
    else
        printf("Rejected\n");
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