/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;


import java.io.FileWriter;
import java.io.IOException;

import java.util.LinkedList;
import javax.swing.JOptionPane;

public class TablaTokensStatpyHTML {
   public static  int a=0;
    public static void generateHTMLFromTokensList(LinkedList<TokensStat> tokensList) {
        String htmlContent = "<html>\n" +
                             "<head><title>Lista de Tokens</title></head>\n" +
                             "<body>\n" +
                             "<div style=\"text-align:center;\">\n"+
                             "<table border=\"1\" style=\"margin: 0 auto;\">\n" +
                             "<tr align=\"center\"><th>LEXEMA</th>\n" +
                             "<th align=\"center\">TOKEN</th>\n" +
                             "<th align=\"center\">LINEA</th>\n" +
                             "<th align=\"center\">COLUMNA</th></tr>";

        for (TokensStat token : tokensList) {
            htmlContent += "<tr >\n" +
                           "<td align=\"center\">" + token.getLEX() + "</td>\n" +
                           "<td align=\"center\">" + token.getToken() + "</td>\n" +
                           "<td align=\"center\">" + token.getLinea() + "</td>\n" +
                           "<td align=\"center\">" + token.getcolum() + "</td>\n" +
                           "</tr>";
        }

        htmlContent += "</table>\n" +
                        "</div>\n"+
                       "</body>\n" +
                       "</html>";
        
        //System.out.println(htmlContent);
        String archivoname = "Reportes\\TabladeTokensStat"+a+".html";        
        a++;
               
        
        
        
    
     try {
      FileWriter myWriter = new FileWriter(archivoname);
      myWriter.write(htmlContent);
      myWriter.close();
      JOptionPane.showMessageDialog(null,"se creo el reporte de stat");
    } 
    catch (IOException e) {
      JOptionPane.showMessageDialog(null,"Ocurrio un error.");
      e.printStackTrace();
    }
     
     htmlContent="";
     
  }
}

