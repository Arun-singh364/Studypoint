<%@ Page Title="" Language="C#" MasterPageFile="~/BeforeLoginHome.Master" AutoEventWireup="true" CodeBehind="BeforeLoginHomePage.aspx.cs" Inherits="STUDYPOINT.BeforeLoginHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>HomePage</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
 <asp:Panel ID="Panel3" runat="server" style="margin-top:150px;   height:350px; width:100%;">
             
      
                  <div style="width:40%; height:350px; float:left; background-color:transparent;">
             
                      <a  type="button"  style="font-size:25px; margin-top:35px; margin-left:40px;width:70%; height:60px;" class="btn btn-outline-primary " href="Login.aspx">All Courses</a>
                      <a type="button"  style=" font-size:25px; margin-top:35px; margin-left:40px;width:70%; height:60px;" class="btn btn-outline-primary " href="Login.aspx">All Subjects</a>
                      <a type="button"  style=" font-size:25px; margin-top:35px; margin-left:40px;width:70%; height:60px;" class="btn btn-outline-primary " href="Login.aspx">Paid Tutorials</a>
                      <a type="button"  style=" font-size:25px; margin-top:35px; margin-left:40px;width:70%; height:60px;" class="btn btn-outline-primary " href="Login.aspx" >Search</a>
                     


                  </div>
                
            <div style=" margin-top:35px; border:solid; width:60%; height:350px; float:right; ">
            
                <div class="container"">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel panel-primary">
                               <div class="panel panel-heading" style="border:solid; background-color:ActiveCaption">
                                   <h1>Latest Notifications:-</h1>
                               </div>
                       <div class="panel-body">
                           <marquee  onmouseover="stop()" onmouseout="start()" scrolldelay:"90" behavior="scroll" direction="left">
                        <ul>
                           <li><asp:LinkButton ID="LinkButton1" runat="server" href="https://www.sarkariresult.com/page/auadmission2018.php">Allahabad University Admission Online Form 2019</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton2" runat="server" href="https://www.sarkariresult.com/2019/iert-admission.php">IERT 2019 Online Form</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton3" runat="server" href="https://www.sarkariresult.com/2019/gate2019.php">IIT GATE 2019 Online Form</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton4" runat="server" href="https://www.sarkariresult.com/page/upscholarship2018.php">UP Scholarship Online Form 2018</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton5" runat="server" href="https://www.sarkariresult.com/page/dupg2018.php">Delhi University DU PG Online Form 2018</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton6" runat="server" href="https://www.sarkariresult.com/page/updeled2018.php">UP DELEd BTC Online Form 2018</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton7" runat="server" href="https://www.sarkariresult.com/page/csjmuadmission.php">Kanpur University Entrance Online Form 2018 </asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton8" runat="server" href="https://www.sarkariresult.com/2019/bundelkhand-university-bu-jhansi.php">BU Jhansi Admission Online Form 2019 </asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton9" runat="server" href="https://www.sarkariresult.com/force/navy-ues-june-2020.php">Indian Navy University Entry Scheme UES Online Form 2019</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton10" runat="server" href="https://www.sarkariresult.com//2019/iit-jee-advance-2019.php">IIT JEE Advance Online Form 2019</asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton11" runat="server" href="https://www.sarkariresult.com/page/scvt-up-iti-2019.php">UP ITI Admission Online Form 2019  </asp:LinkButton></li>
                            <li><asp:LinkButton ID="LinkButton12" runat="server"  href="https://www.sarkariresult.com/2019/up-neet-2019.php">UP NEET 2019 Online Counselling </asp:LinkButton></li>
                           
                                 </ul>
                               </marquee>
                           </div>
                       </div>
                                     </div>
                    </div>
                </div>
                 </div>
                 </asp:Panel>
     
        
        </form>
        

</asp:Content>
