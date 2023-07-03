%{
int word_count=0;
int line_count=0;
int char_count=0;
%}
%%
["     "] {word_count++;}
[\n] {line_count++; word_count++;}
[a-zA-Z] {char_count++;}
%%
int yywrap() {}
int main()
{
printf("Enter the string: ");
yylex();
printf("No. of words are: %d\n",word_count);
printf("No. of lines are: %d\n",line_count);
printf("No. of characters are: %d\n",char_count);
return 0;
}
