using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

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

            ddlLocation.DataTextField = "CityName";
            ddlLocation.DataValueField = "CityId";
            ddlLocation.DataSource = DS;
            ddlLocation.DataBind();

            ddlLocation1.DataTextField = "CityName";
            ddlLocation1.DataValueField = "CityId";
            ddlLocation1.DataSource = DS;
            ddlLocation1.DataBind();

            ddlLocation2.DataTextField = "CityName";
            ddlLocation2.DataValueField = "CityId";
            ddlLocation2.DataSource = DS;
            ddlLocation2.DataBind();

            ddlLocation3.DataTextField = "CityName";
            ddlLocation3.DataValueField = "CityId";
            ddlLocation3.DataSource = DS;
            ddlLocation3.DataBind();

            //ERROR... Postback causing below not to initiate.  Revert all to 1st list item.
            if (!IsPostBack)
            {
                ListItem li = new ListItem("Select Location", "-1");
                ddlLocation.Items.Insert(0, li);
                //ListItem li2 = new ListItem("Select City", "-1");
                //ddlLocation1.Items.Insert(0, li2);
                //ListItem li3 = new ListItem("Select City", "-1");
                //ddlLocation2.Items.Insert(0, li3);
                //ListItem li4 = new ListItem("Select City", "-1");
                //ddlLocation3.Items.Insert(0, li4);
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // NEVER USE THIS CONCATENATE.  TEST ONLY
            //https://stackoverflow.com/questions/13573380/inserting-values-into-a-sql-server-database-using-ado-net-via-c-sharp

            //if (Page.IsValid)
            //{
            string query = "insert into NewEmp(ReqGID, ReqName, ReqPhone,ReqCellPhone,ReqEmail) values('" + lblGID.Text + "','" + txtReqName.Text + "','" + txtReqPhone.Text + "','" + txtReqCell.Text + "','" + txtReqEmail.Text + "')";
            string connectionString = "Data Source=M4800\\SQLExpress;Initial Catalog=RegistrationNewEmp;Integrated Security=True";

            SQLInsertData sql = new SQLInsertData();

            sql.InsertData(connectionString,
                       lblGID.Text,
                       txtReqName.Text.Trim(),
                       txtReqPhone.Text.Trim(),
                       txtReqCell.Text.Trim(),
                       txtReqEmail.Text.Trim());

            //lblStatus.Text = "Data Saved successfully.";
            //}
            //else
            //{
            //    //lblStatus.Forecolor = System.Drawing.color.Red;
            //    //lblStatus.Text = "Validation failed.  Data not saved.";
            //}

        }

        protected void txtDirPath1_TextChanged(object sender, EventArgs e)
        {
            //if (String.IsNullOrWhiteSpace(txtDirPath1.Text))
            //{
            //    ddlLocation1.Enabled = false;
            //    ListItem li2 = new ListItem("Select City", "-1");
            //    ddlLocation1.Items.Insert(0, li2);
            //}
            //else
            //{
            //    ddlLocation1.Enabled = true;
            //    ddlLocation1.SelectedValue = "101";
            //}
        }

        protected void txtDirPath2_TextChanged(object sender, EventArgs e)
        {
            //if (String.IsNullOrWhiteSpace(txtDirPath2.Text))
            //{
            //    ddlLocation2.Enabled = false;
            //    ListItem li3 = new ListItem("Select City", "-1");
            //    ddlLocation2.Items.Insert(0, li3);
            //}
            //else
            //{
            //    //ddlLocation2.Enabled = true;
            //    //ddlLocation2.SelectedValue = "101";
            //}
        }

        protected void txtDirPath3_TextChanged(object sender, EventArgs e)
        {
            //if (String.IsNullOrWhiteSpace(txtDirPath3.Text))
            //{
            //    ddlLocation3.Enabled = false;
            //    //    ListItem li4 = new ListItem("Select City", "-1");
            //    //    ddlLocation3.Items.Insert(0, li4);
            //}
            //else
            //{
            //    //ddlLocation3.Enabled = true;
            //    //ddlLocation3.SelectedValue = "101";

            //}
        }

        protected void ddlLocation1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlLocation1.Enabled == true)
            {

            }

        }
    }
}