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
            Page previousPage = Page.PreviousPage;
            //lblGID.Text = ((TextBox)Page.PreviousPage.FindControl("lblGID")).Text;


            if (Page.PreviousPage != null)
            {
                ContentPlaceHolder Holder = (ContentPlaceHolder)Page.PreviousPage.Master.FindControl("MainContent");

                lblGID.Text = ((Label)Holder.FindControl("lblGID")).Text;
                //lblGID.Text = (previousPage.Form.FindControl("MainContent")).FindControl("lblGID").ToString();
                //lblReqName.Text = ((TextBox)previousPage.Master.FindControl("txtReqName")).Text;
                //lblReqPhone.Text = ((TextBox)previousPage.FindControl("txtReqPhone")).Text;
                //lblReqCellPhone.Text = ((TextBox)previousPage.FindControl("txtReqCell")).Text;
                //lblReqEmail.Text = ((TextBox)previousPage.FindControl("txtReqEmail")).Text;

                //lblGID.Text,
                //       txtReqName.Text.Trim(),
                //       txtReqPhone.Text.Trim(),
                //       txtReqCell.Text.Trim(),
                //       txtReqEmail.Text.Trim());
            }
            else
                {
                    lblStatus.Text = "Something is wrong.";
                }
            }
    }
}