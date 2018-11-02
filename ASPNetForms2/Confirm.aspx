<%@ Page Title="New Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="ASPNetForms2.Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h3>Confirm Data</h3>
        <p class="lead" style="color: #993300; font-size: medium">If the information below is correct, press Submit to complete your form submission. Otherwise, press Modify.</p>
        (For testing purpose.&nbsp; Only <strong>Requestor</strong> section has validation and data submission to SQL Server active.)<br />
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 279px" class="cellPadding">
                    <h4 style="width: 266px"><strong>Requestor</strong></h4>
                </td>
                <td style="height: 20px">
                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 20px">Requestor GID:</td>
                <td style="height: 20px">&nbsp;
                    <asp:Label ID="lblGID" runat="server" Text="GID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 26px;">Requestor Name<span style="color: #FF3300"> </span></td>
                <td class="cellPadding" style="height: 26px">&nbsp;&nbsp;<asp:Label ID="lblReqName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Phone </td>
                <td class="cellPadding">&nbsp; 
                    <asp:Label ID="lblReqPhone" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Cell Phone</td>
                <td class="cellPadding">&nbsp; 
                    <asp:Label ID="lblReqCellPhone" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Requestor LTE (email) </td>
                <td class="cellPadding" style="height: 31px">&nbsp; 
                    <asp:Label ID="lblReqEmail" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 279px" class="cellPadding">
                    <h4 style="width: 266px"><span style="font-weight: bold">New Employee Information</span></h4>
                </td>
                <td style="height: 20px">&nbsp;</td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 20px">First Name</td>
                <td style="height: 20px">&nbsp;
                    <asp:Label ID="lblFName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 26px;">Middle Initial</td>
                <td class="cellPadding" style="height: 26px">&nbsp;&nbsp;<asp:Label ID="lblMiddle" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Last Name</td>
                <td class="cellPadding">&nbsp; 
                    <asp:Label ID="lblLName" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Employee GID</td>
                <td class="cellPadding">&nbsp; 
                    <asp:Label ID="lblEmpGID" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Supervisor </td>
                <td class="cellPadding" style="height: 31px">&nbsp; 
                    <asp:Label ID="lblSupervisor" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Location </td>
                <td class="cellPadding" style="height: 31px">&nbsp;
                    <asp:Label ID="lblLocation" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">ARE </td>
                <td class="cellPadding" style="height: 31px">&nbsp;
                    <asp:Label ID="lblARE" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Work Start Date </td>
                <td class="cellPadding" style="height: 31px">&nbsp;
                    <asp:Label ID="lblWorkStartDate" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 279px; height: 20px;" class="cellPadding">
                    <h4 style="width: 266px"><span style="font-weight: bold">Hardware Requests</span></h4>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 20px">PC Type</td>
                <td style="height: 20px">&nbsp;
                    <asp:Label ID="lblPCType" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 26px;">Additional Hardware</td>
                <td class="cellPadding" style="height: 26px">&nbsp;&nbsp;
                    <asp:Label ID="lblAddHardware" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Deskphone Required</td>
                <td class="cellPadding">&nbsp; 
                    <asp:Label ID="lblDeskphone" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <%--<asp:Button ID="btnModify" runat="server" Text="← Modify" />--%>

        <asp:Button ID="btnModify" runat="server" Text="← Modify"
            OnClientClick="JavaScript:window.history.back(1);return false;"></asp:Button>
        &nbsp;
        <asp:Button ID="btnConfirm" runat="server" Text="Submit →" OnClick="btnConfirm_Click" />
    </div>

</asp:Content>
