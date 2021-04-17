/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lt.viko.eif.vsubotkovski.xsltcompanytohtml;

import java.io.File;
import javax.xml.XMLConstants;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 * Class which represents  XML transformation to HTML.
 * 
 * @author valde
 */
public class Transform {
    
    /**
     * Main method dedicated to transform XML file to HTML using XSL.
     * 
     * @param args
     * @throws TransformerConfigurationException
     * @throws TransformerException 
     */
    public static void main(String args[]) throws TransformerConfigurationException, TransformerException{
        Source xslt = new StreamSource(new File("company.xsl"));
        Source xml = new StreamSource(new File("company.xml"));
        Result out = new StreamResult(new File("company.html"));
        
        TransformerFactory factory = TransformerFactory.newInstance();
        factory.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");
        
        Transformer transformer = factory.newTransformer(xslt);
        transformer.transform(xml, out);
    }
}
