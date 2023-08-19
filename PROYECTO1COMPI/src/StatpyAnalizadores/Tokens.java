/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package StatpyAnalizadores;

/**
 *
 * @author genes
 */
public class Tokens {
    String LEX, token;
    int linea, colum;
    
Tokens(String LEX, String token,  int linea, int colum){
        this.token = token;
        this.LEX = LEX; 
        this.linea = linea; 
        this.colum = colum;
    }
    
    @Override
    public String toString(){
        return   "lexema:"  + LEX  + " "
                   + "TOKEN:"   + token   + " "
                   + "LINEA:"   + linea   + " " 
                   + "COLUMNA:" + colum + " "
                ;
    }

    public String getLEX() {
        return LEX;
    }

    public String getToken() {
        return token;
    }

    public int getLinea() {
        return linea;
    }

    public int getcolum() {
        return colum;
    }
    }
