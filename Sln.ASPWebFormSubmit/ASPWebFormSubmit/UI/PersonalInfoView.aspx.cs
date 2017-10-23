using System;
using System.Data;
using System.Data.SqlClient;

namespace ASPWebFormSubmit.UI
{
    public partial class PersonalInfoView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RenderPage();
        }


        void RenderPage()
        {
            SqlConnection sqlConn = Configuration.MSSQLConnection();
            using (SqlCommand cmd = new SqlCommand("dbo.sp_personalinfo", sqlConn))
            {
                cmd.Parameters.AddWithValue("@pOptions", "1");

                if (!string.IsNullOrEmpty(Request.QueryString["PersonalInfoID"]))
                {
                    cmd.Parameters.AddWithValue("@PersonalInfoID", Request.QueryString["PersonalInfoID"]);
                    vrMsg.InnerHtml = "Personal Info Deleted successfully.";
                    vrMsg.Visible = true;
                }
                if (Request.HttpMethod == "POST")
                {
                    cmd.Parameters.AddWithValue("@FirstName", Request.Form["txt_first_name"]);
                    cmd.Parameters.AddWithValue("@LastName", Request.Form["txt_last_name"]);
                    cmd.Parameters.AddWithValue("@DateOfBirth", Request.Form["txt_dateofbirth"]);
                    cmd.Parameters.AddWithValue("@City", Request.Form["txt_city"]);
                    cmd.Parameters.AddWithValue("@Country", Request.Form["txt_country"]);

                    cmd.Parameters.AddWithValue("@MobileNo", Request.Form["txt_mobile_no"]);
                    cmd.Parameters.AddWithValue("@NID", Request.Form["txt_nid"]);
                    cmd.Parameters.AddWithValue("@Email", Request.Form["txt_email"]);
                    vrMsg.Visible = true;
                }

                cmd.CommandType = CommandType.StoredProcedure;

                using (SqlDataAdapter obj = new SqlDataAdapter(cmd))
                {
                    DataTable DT = new DataTable();
                    obj.Fill(DT);

                    RepPersonalInfo.DataSource = DT;
                    RepPersonalInfo.DataBind();
                }
            }

        }
    }
}