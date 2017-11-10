package org.bit.pm.utils;

import java.io.UnsupportedEncodingException;

public class StringUtil {

    public static String parseChineseStr(String str)  
    {  
    	String parsedStr = null;
        try {
			parsedStr = str == null ? " " : new String(str.getBytes("iso8859-1"),"UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        return parsedStr;
    } 
    
    public static boolean isEmptyString(String str) {
    	 if(str== null || ("".equals(str)) || ("null".equals(str))) {
    		 return true;
    	 }
    	 
    	 return false;
    }
   


    
}
