using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Ekosat_Website.Classes;
using System.Data;

namespace Ekosat_Website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail=@pmail and UserPassword=@ppass",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(commandLogin);
            da.Fill(dt);
            if (dt.Rows.Count>0)
            {
                if (tboxMail.Text == "mehmeterenekiz@gmail.com")
                {
                    Response.Redirect("Admin.aspx");
                    Response.Write("Admin sayfasına giriş yapıldı.");
                }
                else
                {
                    
                }
            }
            else
            {
                Response.Write("Mail adresi ya da şifre hatalı");
            }

        }
    }
}