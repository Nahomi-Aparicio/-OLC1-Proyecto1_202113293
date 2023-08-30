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


CADENA = \" ([^\"] | "\\\"")+ \"
entero = [0-9]+
DECIMAL = [0-9]+("."[  |0-9]+)?
ID = [a-zA-Z_][a-zA-Z0-9_]*
//----> COMENTARIOS
COMENT_S = "//" .*
COMENT_M = "/*"([^*]|("*"+[^*/]))*"*/"
CHARI=\'

%%
// ------------  Reglas Lexicas -------------------


//---SIMBOLOS
"("       {  funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"PARENTESIS_A",yyline,yycolumn));
            return new Symbol(sym.PARENTESIS_A, yycolumn, yyline, yytext());}

")"       {  funciones.info.ListaTokensStat.add(new funciones.TokensStat( yytext(),"PARENTESIS_C",yyline,yycolumn));
             return new Symbol(sym.PARENTESIS_C, yycolumn, yyline, yytext());}

"{"        {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"LLAVE_A",yyline,yycolumn));
            return new Symbol(sym.LLAVE_A, yycolumn, yyline, yytext());}

"}"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"LLAVE_C",yyline,yycolumn));
            return new Symbol(sym.LLAVE_C, yycolumn, yyline, yytext());}

";"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"PUNTO_COMA",yyline,yycolumn));
            return new Symbol(sym.PUNTO_COMA, yycolumn, yyline, yytext());}

":"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DOSP",yyline,yycolumn));
            return new Symbol(sym.DOSP, yycolumn, yyline, yytext());}

","       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"COMA",yyline,yycolumn));
            return new Symbol(sym.COMA, yycolumn, yyline, yytext());}

"["       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CORCHETE_A",yyline,yycolumn));
            return new Symbol(sym.CORCHETE_A, yycolumn, yyline, yytext());}

"]"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CORCHETE_C",yyline,yycolumn));
            return new Symbol(sym.CORCHETE_C, yycolumn, yyline, yytext());}

"$"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DOLAR",yyline,yycolumn));
            return new Symbol(sym.DOLAR, yycolumn, yyline, yytext());}

"=="      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"IGUALIGUAL",yyline,yycolumn));
            return new Symbol(sym.IGUALIGUAL, yycolumn, yyline, yytext());}

"++"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MASMAS",yyline,yycolumn));
            return new Symbol(sym.MASMAS, yycolumn, yyline, yytext());}

"--"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MENOSMENOS",yyline,yycolumn));
            return new Symbol(sym.MENOSMENOS, yycolumn, yyline, yytext());}

"="       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"IGUAL",yyline,yycolumn));
            return new Symbol(sym.IGUAL, yycolumn, yyline, yytext());}

//---> SIMBOLOS ARITMETICOS
"+"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MAS",yyline,yycolumn));
            return new Symbol(sym.MAS, yycolumn, yyline, yytext());}

"-"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MENOS",yyline,yycolumn));
            return new Symbol(sym.MENOS, yycolumn, yyline, yytext());}

"*"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"POR",yyline,yycolumn));
            return new Symbol(sym.POR, yycolumn, yyline, yytext());}

"/"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DIV",yyline,yycolumn));
            return new Symbol(sym.DIV, yycolumn, yyline, yytext());}

//---> OPERADORES DE RELACION
">"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MAYOR",yyline,yycolumn));
            return new Symbol(sym.MAYOR, yycolumn, yyline, yytext());}

"<"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MENOR",yyline,yycolumn));
            return new Symbol(sym.MENOR, yycolumn, yyline, yytext());}

">="      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"M_IGUAL",yyline,yycolumn));
            return new Symbol(sym.M_IGUAL, yycolumn, yyline, yytext());}

"<="      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"ENOR_IGUAL",yyline,yycolumn));
            return new Symbol(sym.ENOR_IGUAL, yycolumn, yyline, yytext());}


"!="      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DIFERENTE",yyline,yycolumn));
            return new Symbol(sym.DIFERENTE, yycolumn, yyline, yytext());}

//---> OPERADORES LOGICOS
"&&"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"AND",yyline,yycolumn));
            return new Symbol(sym.AND, yycolumn, yyline, yytext());}

"||"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"OR",yyline,yycolumn));
            return new Symbol(sym.OR, yycolumn, yyline, yytext());}

"!"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"NOT",yyline,yycolumn));
            return new Symbol(sym.NOT, yycolumn, yyline, yytext());}

//--> funciones.funcion.ListaT.add(new Tokens(yytext() ,"punto_coma" ,yyline ,yycolumn)); PARA LA TABLA DE TOKENS 
//----> PALABRAS RESERVADAS 
"void"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"VOID",yyline,yycolumn));
            return new Symbol(sym.VOID, yycolumn, yyline, yytext());}

"int"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"INT",yyline,yycolumn));
            return new Symbol(sym.INT, yycolumn, yyline, yytext());}

"double"    {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DOUBLE",yyline,yycolumn));
            return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext());}

"char"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CHAR",yyline,yycolumn));
            return new Symbol(sym.CHAR, yycolumn, yyline, yytext());}

"bool"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"BOOL",yyline,yycolumn));
            return new Symbol(sym.BOOL, yycolumn, yyline, yytext());}

"string"    {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"STRING",yyline,yycolumn));
            return new Symbol(sym.STRING, yycolumn, yyline, yytext());}

"var"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"VAR",yyline,yycolumn));
            return new Symbol(sym.VAR, yycolumn, yyline, yytext());}

"main"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"MAIN",yyline,yycolumn));
            return new Symbol(sym.MAIN, yycolumn, yyline, yytext());}

"if"        {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"IF",yyline,yycolumn));
            return new Symbol(sym.IF, yycolumn, yyline, yytext());}

"else"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"ELSE",yyline,yycolumn));
            return new Symbol(sym.ELSE, yycolumn, yyline, yytext());}

"switch"    {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"SWITCH",yyline,yycolumn));
            return new Symbol(sym.SWITCH, yycolumn, yyline, yytext());}

"break"     {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"BREAK",yyline,yycolumn));
            return new Symbol(sym.BREAK, yycolumn, yyline, yytext());}

"for"       {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"FOR",yyline,yycolumn));
            return new Symbol(sym.FOR, yycolumn, yyline, yytext());}

"while"     {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"WHILE",yyline,yycolumn));
            return new Symbol(sym.WHILE, yycolumn, yyline, yytext());}

"Console.Write"     {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CONSOL",yyline,yycolumn));
            return new Symbol(sym.CONSOL, yycolumn, yyline, yytext());}

"default"   {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DEFAULT",yyline,yycolumn));
            return new Symbol(sym.DEFAULT, yycolumn, yyline, yytext());}  
  
"case"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CASE",yyline,yycolumn));
            return new Symbol(sym.CASE, yycolumn, yyline, yytext());}

"do"        {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DO",yyline,yycolumn));
            return new Symbol(sym.DO, yycolumn, yyline, yytext());}

"true"      {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"TRUE",yyline,yycolumn));
            return new Symbol(sym.TRUE, yycolumn, yyline, yytext());}

"false"     {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"FALSE",yyline,yycolumn));
            return new Symbol(sym.FALSE, yycolumn, yyline, yytext());}

"break"     {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"BREAK",yyline,yycolumn));
            return new Symbol(sym.BREAK, yycolumn, yyline, yytext());}

//----> palabras reservadas para graficas falta preguntarle al aux


// ------>   LEXICOS
{entero}     { funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"ENTERO",yyline,yycolumn));
                return new Symbol(sym.ENTERO, yycolumn, yyline, yytext()); }

{DECIMAL}    {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"DECIMAL",yyline,yycolumn));
                return new Symbol(sym.DECIMAL, yycolumn, yyline, yytext());}

{ID}         {funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"ID",yyline,yycolumn));
             return new Symbol(sym.ID, yycolumn, yyline, yytext()); }

{CADENA}     { funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CADENA",yyline,yycolumn));
            return new Symbol(sym.CADENA, yycolumn, yyline, yytext()); }

{CHARI}      { funciones.info.ListaTokensStat.add(new funciones.TokensStat(yytext(),"CHARI",yyline,yycolumn));
            return new Symbol(sym.CHARI, yycolumn, yyline, yytext()); }



//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}


{COMENT_S}    {}
{COMENT_M}    {}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn);
                   

 }

