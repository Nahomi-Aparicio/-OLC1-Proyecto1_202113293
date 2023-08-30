/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package funciones;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.LinkedList;

public class HTMLGenerator {
    public static void generateHTMLFromTokensList(LinkedList<TokensStat> tokensList, String outputPath) {
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
        
        System.out.println(htmlContent);

        // Escribir el contenido HTML en un archivo
        try {
            BufferedWriter writer = new BufferedWriter(new FileWriter(outputPath));
            writer.write(htmlContent);
            writer.close();
            System.out.println("Archivo HTML generado exitosamente en " + outputPath);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


