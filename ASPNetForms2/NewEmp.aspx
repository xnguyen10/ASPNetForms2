<%@ Page Title="New Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewEmp.aspx.cs" Inherits="ASPNetForms2._Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h3>New Employee Form</h3>
        <p class="lead" style="color: #993300; font-size: medium">Please complete all fields in the form.&nbsp; Forms with missing or incorrect information may result in delay to the IT On-boarding process.</p>
        (For testing purpose.&nbsp; Only <strong>Requestor</strong> section has validation and data submission to SQL Server active.)<br />
    </div>

    <div class="jumbotron">
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
                <td style="height: 20px">
                    <asp:Label ID="lblGID" runat="server" Text="GID"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Name<span style="color: #FF3300"> *</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtReqName" runat="server" Width="210px"></asp:TextBox>&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorReqName" runat="server"
                        Display="Dynamic" ErrorMessage="Requestor Name required." ControlToValidate="txtReqName" ForeColor="red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Phone <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtReqPhone" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorReqName0" runat="server"
                        ErrorMessage="Requestor Phone required." ControlToValidate="txtReqPhone" Display="Dynamic"
                        ForeColor="red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtReqPhone"
                        ForeColor="red" Display="Dynamic" ErrorMessage="Phone Invalid." ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Requestor Cell Phone</td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtReqCell" runat="server" Width="210px"></asp:TextBox>
                    &nbsp; 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorCell" ForeColor="red" Display="Dynamic"
                        runat="server" ErrorMessage="Cell Phone Invalid." ControlToValidate="txtReqCell"
                        ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 31px;">Requestor LTE (email) <span style="color: #FF3300">*</span></td>
                <td class="cellPadding" style="height: 31px">
                    <asp:TextBox ID="txtReqEmail" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorReqEmail" runat="server"
                        ErrorMessage="Requestor Email required." ControlToValidate="txtReqEmail" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server"
                        ErrorMessage="Email Invalid." Display="Dynamic"
                        ControlToValidate="txtReqEmail" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <br />

        <table style="width: 100%;">
            <tr>
                <td style="width: 279px" class="modal-sm">
                    <h4 style="width: 269px; height: 23px"><span style="font-weight: bold">New Employee Information</span></h4>
                </td>
                <td style="height: 20px">(Testing.&nbsp; Validation and data submission inactive.)</td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 20px">First Name <span style="color: #FF3300">*</span></td>
                <td style="height: 20px">
                    <asp:TextBox ID="txtFName" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFName" runat="server"
                        ErrorMessage="Employee Name required." ControlToValidate="txtFName" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Middle Initial</td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtMiddle" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Last Name <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtLName" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server"
                        Display="Dynamic" ErrorMessage="Last Name required." ControlToValidate="txtLName" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Employee GID <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtGID" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorGID" runat="server"
                        ErrorMessage="Employee GID required." ControlToValidate="txtGID" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Supervisor <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtSupervisor" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorSupervisor" runat="server"
                        Display="Dynamic" ErrorMessage="Supervisor name required." ControlToValidate="txtSupervisor" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Location <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:DropDownList ID="ddlLocation" runat="server" Width="208px">
                        <asp:ListItem Selected="True">Select Location</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLocation" runat="server"
                        Display="Dynamic" ErrorMessage="Location required." InitialValue="-1" ControlToValidate="ddlLocation" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">ARE <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtARE" runat="server" Width="210px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorARE" runat="server" Display="Dynamic"
                        ErrorMessage="ARE required." ControlToValidate="txtARE" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Work Start Date <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtWorkStartDate" runat="server" Width="210px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtWorkStartDate_CalendarExtender" runat="server" TargetControlID="txtWorkStartDate" PopupButtonID="CalendarButton" />
                    <img alt="Icon" src="/images/Calendar_scheduleHS.png" id="CalendarButton" />&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorWorkStartDate" runat="server" Display="Dynamic"
                        ErrorMessage="Work start date required." ControlToValidate="txtWorkStartDate" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
            </tr>
        </table>
        <br />
        <table style="width: 100%;">
            <tr>
                <td style="width: 279px; height: 20px;" class="cellPadding">
                    <h4 style="width: 266px"><span style="font-weight: bold">Hardware Requests</span></h4>
                </td>
                <td style="height: 20px">(Testing.&nbsp; Validation and data submission inactive.)</td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 19px">PC Type <span style="color: #FF3300">*</span></td>
                <td style="height: 19px" aria-busy="False">
                    <asp:DropDownList ID="ddlPCType" runat="server">
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Tablet</asp:ListItem>
                        <asp:ListItem>Desktop</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 20px;">Additional Hardware:</td>
                <td class="cellPadding" style="height: 20px">
                    <asp:TextBox ID="txtOtherHardware" runat="server" Width="210px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px">Deskphone required <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:DropDownList ID="ddlDeskphone" runat="server">
                        <asp:ListItem Selected="True" Value="Yes">Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <br />
        <input type="button" id="btnReset" value="Reset" />&nbsp;
        <asp:Button ID="btnContinue" runat="server" Text="Continue →" OnClick="btnContinue_Click" />
        <br />
        <br />
        <span style="color: #FF3300">*</span> indicates required fields<br />

    </div>

    <script>
        $(function () {
            $("#btnReset").click(function () {
                $("#<%= txtReqName.ClientID %>").val("");
                $("#<%= txtReqPhone.ClientID %>").val("");
                $("#<%= txtReqCell.ClientID %>").val("");
                $("#<%= txtReqEmail.ClientID %>").val("");

                $("#<%= txtFName.ClientID %>").val("");
                $("#<%= txtLName.ClientID %>").val("");
                $("#<%= txtMiddle.ClientID %>").val("");
                $("#<%= txtGID.ClientID %>").val("");
                $("#<%= txtSupervisor.ClientID %>").val("");

                $("#<%= ddlLocation.ClientID %>").val("101");
                $("#<%= txtARE.ClientID %>").val("");
                $("#<%= txtWorkStartDate.ClientID %>").val("");

                $("#<%= ddlPCType.ClientID %>").val("Laptop");
                $("#<%= txtOtherHardware.ClientID %>").val("");
                $("#<%= ddlDeskphone.ClientID %>").val("Yes");
            });
        });

    </script>

</asp:Content>
