<%@ include file="oheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;
%>
 <% java.util.Enumeration e = request.getParameterNames();
 while(e.hasMoreElements()){
         // String e=names.nextElement();
		   String name = (String)e.nextElement();  
		   System.out.println("nm="+name);  }
  
		  //if(
      


	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();
File f=new File(saveFile);
FileInputStream fis=new FileInputStream(saveFile);
session.setAttribute("fis",fis);
 fnm=f.getName();
         // open input stream test.txt for reading purpose.
		 try{
         BufferedReader br = new BufferedReader(new FileReader(f));
		 StringBuffer sb=new StringBuffer();
         while ((thisLine = br.readLine()) != null) {
          //  System.out.println(thisLine);
			
                sb1=sb.append(thisLine);
				//System.out.println(sb1);
         }} catch(Exception e1){ }
		 unm=(String)session.getAttribute("unm");
		 session.setAttribute("data",sb1);
}
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet r=st.executeQuery("select max(fid) from cloudserver ");
if(r.next())
	{

 i=r.getInt(1);
 System.out.println("i="+i);
if(i>=0)
	{
i++;
	}
}
}catch(Exception e11)
{
e11.printStackTrace();
}

%>


<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Upload</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="upload2.jsp" method="post" class="agile_form">
                       <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Id<span>*</span></label>
                            <input  placeholder="" name="fid" value=<%=i%> type="text" required="">
							<input type="hidden" name="unm" value=<%=unm%>>
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="fname" value=<%=fnm%> type="text" required="">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">FileData:<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=sb1%></textarea>
                        </div>	

                       
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Symmetrickey:<span>*</span></label>
                            <input  placeholder=" " type="text" name="smkey" readonly required="dddd">
                        </div>
						<div class="clearfix"></div>
                        
						 
                        <br>
                        <input type="submit" value="GetKey">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>
	<%@ include file="footer.jsp"%>	