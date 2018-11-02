using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ASPNetForms2.files;

namespace ASPNetForms2
{
   
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = System.Security.Principal.WindowsIdentity.GetCurrent().Name;
            lblGID.Text = username;

            DataSet DS = new DataSet();
            DS.ReadXml(Server.MapPath("~/files/cities.xml"));

            // Load location dropdownlist from cities.xml
            if (!IsPostBack)
            {
                ddlLocation.DataTextField = "CityName";
                ddlLocation.DataValueField = "CityId";
                ddlLocation.DataSource = DS;
                ddlLocation.DataBind();
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Session["ReqGID"] = lblGID.Text;
            Session["ReqName"] = txtReqName.Text;
            Session["ReqPhone"] = txtReqPhone.Text;
            Session["ReqCell"] = txtReqCell.Text;
            Session["ReqEmail"] = txtReqEmail.Text;

            Response.Redirect("~/Confirm.aspx");
        }

    
    }
}