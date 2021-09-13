/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author anjali
 */

 import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
public class BULK {
    
    
    
   
public static void main(String[] args) throws IOException {
String result =sendSms1();
System.out.println("result :" + result);
}
public static String sendSms1(){
String sResult = null;
try
{
// Construct data
String phonenumbers="8341790416";
String data="user=" + URLEncoder.encode("AbhiNandu", "UTF-8");
data +="&password=" + URLEncoder.encode("AbhiNandu", "UTF-8");
data +="&message=" + URLEncoder.encode("hi hello", "UTF-8");
data +="&sender=" + URLEncoder.encode("INVITE", "UTF-8");
data +="&mobile=" + URLEncoder.encode(phonenumbers, "UTF-8");
data +="&type=" + URLEncoder.encode("3", "UTF-8");
URL url = new URL("http://login.bulksmsgateway.in/sendmessage.php?"+data);
URLConnection conn = url.openConnection();
conn.setDoOutput(true);
OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
wr.write(data);
wr.flush();
// Get the response
BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
String line;
String sResult1="";
while ((line = rd.readLine()) != null)
{
// Process line...
sResult1=sResult1+line+" ";
}
wr.close();
rd.close();
return sResult1;
}
catch (Exception e)
{
System.out.println("Error SMS "+e);
return "Error "+e;
}
}
// TODO Auto-generated method stub
}


    

