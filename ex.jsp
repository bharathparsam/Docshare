<%@ page  import="java.sql.*,it.unisa.dia.gas.jpbc.Element" import="databaseconnection.*,abe.CPABE,DSA.DSA"%>

<%

DSA dsa=new DSA();
dsa.keyGeneration();

byte[] Publickey=dsa.getPublicKey();

byte[] Secretkey=dsa.getPrivateKey();


 %>