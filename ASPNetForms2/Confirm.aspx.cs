using ASPNetForms2.files;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetForms2
{
    public partial class Submit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblGID.Text = Session["ReqGID"].ToString();
            lblReqName.Text = Session["ReqName"].ToString();
            lblReqCellPhone.Text = Session["ReqPhone"].ToString();
            lblReqPhone.Text = Session["ReqCell"].ToString();
            lblReqEmail.Text = Session["ReqEmail"].ToString();

            #region Page.PreviousPage
            //Page previousPage = Page.PreviousPage;

            //if (Page.PreviousPage != null)
            //{
            //    //Add "Master" due to using Site.Master

            //    ContentPlaceHolder Holder = (ContentPlaceHolder)Page.PreviousPage.Master.FindControl("MainContent");

            //    //lblGID.Text = ((Label)Holder.FindControl("lblGID")).Text;
            //    //lblReqName.Text = ((TextBox)Holder.FindControl("txtReqName")).Text;
            //    //lblReqCellPhone.Text = ((TextBox)Holder.FindControl("txtReqPhone")).Text;
            //    //lblReqPhone.Text = ((TextBox)Holder.FindControl("txtReqCell")).Text;
            //    //lblReqEmail.Text = ((TextBox)Holder.FindControl("txtReqEmail")).Text;



            //    lblFName.Text = ((TextBox)Holder.FindControl("txtFName")).Text;
            //    lblMiddle.Text = ((TextBox)Holder.FindControl("txtMiddle")).Text;
            //    lblLName.Text = ((TextBox)Holder.FindControl("txtLName")).Text;
            //    lblEmpGID.Text = ((TextBox)Holder.FindControl("txtGID")).Text;
            //    lblSupervisor.Text = ((TextBox)Holder.FindControl("txtSupervisor")).Text;
            //    lblLocation.Text = ((DropDownList)Holder.FindControl("ddlLocation")).SelectedItem.ToString();
            //    lblARE.Text = ((TextBox)Holder.FindControl("txtARE")).Text;
            //    lblWorkStartDate.Text = ((TextBox)Holder.FindControl("txtWorkStartDate")).Text;

            //    lblPCType.Text = ((RadioButtonList)Holder.FindControl("radPCType")).Text;
            //    lblAddHardware.Text = ((TextBox)Holder.FindControl("txtOtherHardware")).Text;
            //    lblDeskphone.Text = ((RadioButtonList)Holder.FindControl("radDeskphone")).Text;
            //}
            //else
            //{
            //    lblStatus.Text = "Data Error.";
            //}
            #endregion
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=M4800\\SQLExpress;Initial Catalog=RegistrationNewEmp;Integrated Security=True";
            SQLInsertData sql = new SQLInsertData();

            // Call new sql object of SQLInsertData class and pass data.
            sql.InsertData(connectionString,
                       lblGID.Text,
                       lblReqName.Text,
                       lblReqPhone.Text,
                       lblReqCellPhone.Text,
                       lblReqEmail.Text);

            Server.Transfer("Submit.aspx");
        }
    }
}