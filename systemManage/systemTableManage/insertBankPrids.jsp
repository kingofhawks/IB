<%@ page contentType="text/html; charset=GB2312"%>
<%
String brno =  request.getParameter("brno");
if(brno!=null){


        new com.witsoft.bean.systemManage.systemTableManage.TableManageBean()
                .setBankPrid(brno, request
                        .getParameterValues("id"));
                        out.println("建立银行成功！");
                        
                        }else{
                        out.println("建立银行不成功，银行编号为空！");
                        }
                        %>
                        

