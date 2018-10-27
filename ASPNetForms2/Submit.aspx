<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Submit.aspx.cs" Inherits="ASPNetForms2.Submit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h3>Confirm Data</h3>
        <p class="lead" style="color: #993300; font-size: medium">If the information below is correct, press Confirm to complete your form submission. Otherwise, press Modify.</p>
        <br />
        <table style="width: 100%;" >
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
                <td style="height: 20px">
                    &nbsp;
                    <asp:Label ID="lblGID" runat="server" Text="GID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 26px;">Requestor Name<span style="color: #FF3300"> </span></td>
                <td class="cellPadding" style="height: 26px">
                    &nbsp;&nbsp;<asp:Label ID="lblReqName" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Phone </td>
                <td class="cellPadding">
                    &nbsp; 
                    <asp:Label ID="lblReqPhone" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Cell Phone</td>
                <td class="cellPadding">
                &nbsp; 
                    <asp:Label ID="lblReqCellPhone" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Requestor LTE (email) </td>
                <td class="cellPadding" style="height: 31px">
                &nbsp; 
                    <asp:Label ID="lblReqEmail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            </table>
        <br />
        <asp:Button ID="btnModify" runat="server" Text="← Modify" />
&nbsp;
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm →" />
    </div>

</asp:Content>
