// ------------  Paquete e importaciones ------------
package JsonAnalizadores; 

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

doubles = [0-9]+"."[0-9]+
string = \" ([^\"] | "\\\"")+ \"
//----> COMENTARIOS
COMENT_S = "//" .*
COMENT_M = "/*"([^*]|("*"+[^*/]))*"*/"


// ------------  Código Java -------------------

%%
// ------------  Reglas Lexicas -------------------


//---------------------> simbolos
"{"       {return new Symbol(sym.LLAVE_AA, yycolumn, yyline, yytext());}
"}"       {return new Symbol(sym.LLAVE_CC, yycolumn, yyline, yytext());}
":"       {return new Symbol(sym.DOSP, yycolumn, yyline, yytext());}
","       {return new Symbol(sym.COMA, yycolumn, yyline, yytext());}

// ------> Expresiones Regulares 
{doubles}  { return new Symbol(sym.DOUBLE, yycolumn, yyline, yytext()); }
{string}  { return new Symbol(sym.STRING, yycolumn, yyline, yytext()); }



//------> Ingorados 
[ \t\r\n\f]     {/* Espacios en blanco se ignoran */}
{COMENT_S}    {}
{COMENT_M}    {}


//------> Errores Léxicos 
.           	{ System.out.println("Error Lexico: " + yytext() + " | Fila:" + yyline + " | Columna: " + yycolumn); }