// ------------  Paquete e importaciones ------------
package StatpyAnalizadores; 

import java_cup.runtime.*;

%%	
//-------> Directivas (No tocar)

%public 
%class Lexer
%cup
%char
%column
%line
%unicode
%ignorecase

%{ 
%} 

// ------> Expresiones Regulares 

entero = [0-9]+
//----> COMENTARIOS

COMENT_S = "//" .*


%%
// ------------  Reglas Lexicas -------------------


//---SIMBOLOS
"("       {return new Symbol(sym.PARENTESIS_A, yycolumn, yyline, yytext());}
")"       {return new Symbol(sym.PARENTESIS_C, yycolumn, yyline, yytext());}
"{"       {return new Symbol(sym.LLAVE_A, yycolumn, yyline, yytext());}
"}"       {return new Symbol(sym.LLAVE_C, yycolumn, yyline, yytext());}
";"       {return new Symbol(sym.PUNTO_COMA, yycolumn, yyline, yytext());}
":"       {return new Symbol(sym.DOSP, yycolumn, yyline, yytext());}
","       {return new Symbol(sym.COMA, yycolumn, yyline, yytext());}
"["       {return new Symbol(sym.CORCHETE_A, yycolumn, yyline, yytext());}
"]"       {return new Symbol(sym.CORCHETE_C, yycolumn, yyline, yytext());}
"$"       {return new Symbol(sym.DOLAR, yycolumn, yyline, yytext());}
"=="      {return new Symbol(sym.IGUALIGUAL, yycolumn, yyline, yytext());}

"="       {return new Symbol(sym.IGUAL, yycolumn, yyline, yytext());}

//---> SIMBOLOS ARITMETICOS
"+"       {return new Symbol(sym.MAS, yycolumn, yyline, yytext());}
"-"       {return new Symbol(sym.MENOS, yycolumn, yyline, yytext());}
"*"       {return new Symbol(sym.POR, yycolumn, yyline, yytext());}
"/"       {return new Symbol(sym.DIV, yycolumn, yyline, yytext());}

//---> OPERADORES DE RELACION
">"       {return new Symbol(sym.MAYOR, yycolumn, yyline, yytext());}
"<"       {return new Symbol(sym.MENOR, yycolumn, yyline, yytext());}
">="      {return new Symbol(sym.M_IGUAL, yycolumn, yyline, yytext());}
"<="      {return new Symbol(sym.ENOR_IGUAL, yycolumn, yyline, yytext());}

"!="      {return new Symbol(sym.DIFERENTE, yycolumn, yyline, yytext());}

//---> OPERADORES LOGICOS
"&&"      {return new Symbol(sym.AND, yycolumn, yyline, yytext());}
"||"      {return new Symbol(sym.OR, yycolumn, yyline, yytext());}
"!"       {return new Symbol(sym.NOT, yycolumn, yyline, yytext());}

//--> funciones.funcion.ListaT.add(new Tokens(yytext() ,"punto_coma" ,yyline ,yycolumn)); PARA LA TABLA DE TOKENS 
//----> PALABRAS RESERVADAS 
"void"      {return new Symbol(sym.VOID, yycolumn, yyline, yytext());}
"int"       {return new Symbol(sym.INT, yycolumn, yyline, yytext());}
"double"    {return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext());}
"char"      {return new Symbol(sym.CHAR, yycolumn, yyline, yytext());}
"bool"      {return new Symbol(sym.BOOL, yycolumn, yyline, yytext());}
"string"    {return new Symbol(sym.STRING, yycolumn, yyline, yytext());}
"main"      {return new Symbol(sym.MAIN, yycolumn, yyline, yytext());}
"if"        {return new Symbol(sym.IF, yycolumn, yyline, yytext());}
"else"      {return new Symbol(sym.ELSE, yycolumn, yyline, yytext());}
"switch"    {return new Symbol(sym.SWITCH, yycolumn, yyline, yytext());}
"break"     {return new Symbol(sym.BREAK, yycolumn, yyline, yytext());}
"for"       {return new Symbol(sym.FOR, yycolumn, yyline, yytext());}
"while"     {return new Symbol(sym.WHILE, yycolumn, yyline, yytext());}
"Console.Write"     {return new Symbol(sym.CONSOL, yycolumn, yyline, yytext());}
"default"   {return new Symbol(sym.DEFAULT, yycolumn, yyline, yytext());}    
"case"      {return new Symbol(sym.CASE, yycolumn, yyline, yytext());}
"do"        {return new Symbol(sym.DO, yycolumn, yyline, yytext());}

//----> palabras reservadas para graficas falta preguntarle al aux







// --  LEXICOS
{entero}  { return new Symbol(sym.ENTERO, yycolumn, yyline, yytext()); }




//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}


{COMENT_S}      {}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }

