using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ekosat_Website.Classes;
using System.Data.SqlClient;

namespace Ekosat_Website
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegister = new SqlCommand("insert into TableUser(UserMail,UserPassword,UserSehir) values(@pmail,@ppass,@psehir)",SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandRegister.Parameters.AddWithValue("@pmail",tboxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppass",newPass);
            commandRegister.Parameters.AddWithValue("@psehir",tboxSehir.Text);

            commandRegister.ExecuteNonQuery();


        }
    }
}