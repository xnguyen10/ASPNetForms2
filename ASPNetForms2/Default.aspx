<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASPNetForms2._Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <div class="jumbotron">
        <h3>New Employee Form</h3>
        <p class="lead" style="color: #993300; font-size: medium">Please complete all fields in the form.&nbsp; Forms with missing or incorrect information may result in delay to the IT On-boarding process.</p>
    </div>

    <div class="jumbotron">
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
                    &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidatorReqName0" runat="server" 
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
                &nbsp; <asp:RequiredFieldValidator ID="RequiredFieldValidatorReqEmail" runat="server" 
                        ErrorMessage="Requestor Email required." ControlToValidate="txtReqEmail" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" 
                    ErrorMessage="Email Invalid." Display="Dynamic"
                    ControlToValidate="txtReqEmail" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            </table>
        <br />

        <table style="width: 100%;" >
            <tr>
                <td style="width: 279px" class="modal-sm">
                    <h4 style="width: 269px; height: 23px"><span style="font-weight: bold">New Employee Information</span></h4>
                </td>
                <td style="height: 20px"></td>
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
                <td class="cellPadding" style="width: 279px; height: 46px;">If New Employee had a previous Company email address, please enter here:</td>
                <td class="cellPadding" style="height: 46px">
                    <asp:TextBox ID="txtPreviousSiemensEmail" runat="server" Width="210px"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorSiemensEmail" runat="server" 
                    ErrorMessage="Email Invalid." Display="Dynamic"
                    ControlToValidate="txtPreviousSiemensEmail" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Visible="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 279px">Work Start Date <span style="color: #FF3300">*</span></td>
                <td class="cellPadding">
                    <asp:TextBox ID="txtWorkStartDate" runat="server" Width="210px"></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="txtWorkStartDate_CalendarExtender" runat="server" TargetControlID="txtWorkStartDate" PopupButtonID="CalendarButton"/>
                    <img alt="Icon" src="/images/Calendar_scheduleHS.png" id="CalendarButton" />&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorWorkStartDate" runat="server" Display="Dynamic" 
                        ErrorMessage="Work start date required." ControlToValidate="txtWorkStartDate" ForeColor="red" Visible="False"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;</td>
            </tr>
            </table>
        <br />
        <table style="width: 100%;" >
            <tr>
                <td style="width: 279px; height: 20px;" class="cellPadding">
                    <h4 style="width: 266px"><span style="font-weight: bold">Hardware Requests</span></h4>
                </td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 279px; height: 19px">PC Type <span style="color: #FF3300">*</span></td>
                <td style="height: 19px" aria-busy="False" >
                    <asp:RadioButtonList ID="radPCType" runat="server" CellSpacing="10" RepeatDirection="Horizontal" >
                        <asp:ListItem Selected="True">&nbsp;Laptop</asp:ListItem>
                        <asp:ListItem >&nbsp;Desktop</asp:ListItem>
                    </asp:RadioButtonList>
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
                    <asp:RadioButtonList ID="radDeskphone" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem style="margin-right:10px" Selected="True">&nbsp;Yes</asp:ListItem>
                        <asp:ListItem>&nbsp;No</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            </table>
        <br />
        <table style="width: 100%;" >
            <tr>
                <td style="width: 260px; height: 20px;" class="cellPadding">
                    <h4 style="width: 247px"><span style="font-weight: bold">Directory Access Needed</span></h4>
                </td>
                <td style="height: 20px; width: 154px;"></td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 260px; height: 20px">Directory Path (ex: \\servername\path</td>
                <td style="height: 20px; width: 154px;">
                    Location</td>
                <td style="height: 20px">
                    Security</td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 260px">
                    <asp:TextBox ID="txtDirPath1" runat="server" Width="230px" AutoPostBack="True" OnTextChanged="txtDirPath1_TextChanged"></asp:TextBox>
                </td>
                <td class="cellPadding" style="width: 154px">
                    <asp:DropDownList ID="ddlLocation1" runat="server" Enabled="False" OnSelectedIndexChanged="ddlLocation1_SelectedIndexChanged">
                        <asp:ListItem>Select Location</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cellPadding">
                    <asp:RadioButtonList ID="radReadWrite1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem style="margin-right:10px" Selected="True">&nbsp;Read</asp:ListItem>
                        <asp:ListItem>&nbsp;Read/Write</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 260px; height: 22px;">
                    <asp:TextBox ID="txtDirPath2" runat="server" Width="230px" AutoPostBack="True" OnTextChanged="txtDirPath2_TextChanged"></asp:TextBox>
                </td>
                <td class="cellPadding" style="width: 154px; height: 22px;">
                    <asp:DropDownList ID="ddlLocation2" runat="server" Enabled="False">
                        <asp:ListItem>Select Location</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cellPadding" style="height: 22px">
                    <asp:RadioButtonList ID="radReadWrite2" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem style="margin-right:10px" Selected="True">&nbsp;Read</asp:ListItem>
                        <asp:ListItem>&nbsp;Read/Write</asp:ListItem>
                    </asp:RadioButtonList>
                    </td>
            </tr>
            <tr>
                <td class="cellPadding" style="width: 260px">
                    <asp:TextBox ID="txtDirPath3" runat="server" Width="230px" AutoPostBack="True" OnTextChanged="txtDirPath3_TextChanged"></asp:TextBox>
                </td>
                <td class="cellPadding" style="width: 154px">
                    <asp:DropDownList ID="ddlLocation3" runat="server" Enabled="False">
                        <asp:ListItem>Select Location</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="cellPadding">
                    <asp:RadioButtonList ID="radReadWrite3" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem  Selected="True">&nbsp;Read</asp:ListItem>
                        <asp:ListItem>&nbsp;Read/Write</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            </table>
        <br />
        <asp:Button ID="btnReset" runat="server" Text="Reset" />
        &nbsp;&nbsp; <asp:Button ID="btnSubmit" runat="server" Text="ContinueX" OnClick="btnSubmit_Click" />
        &nbsp;
        <asp:Button ID="btnContinue" runat="server" Text="Continue →" PostBackUrl="~/Submit.aspx" />
        <br />
        <br />
        <span style="color: #FF3300">*</span> indicates required fields<br />
    </div>

  

</asp:Content>
