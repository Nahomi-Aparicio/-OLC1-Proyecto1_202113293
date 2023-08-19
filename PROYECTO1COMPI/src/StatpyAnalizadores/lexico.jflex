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


// --  LEXICOS
{entero}  { return new Symbol(sym.ENTERO, yycolumn, yyline, yytext()); }




//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}

//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }

