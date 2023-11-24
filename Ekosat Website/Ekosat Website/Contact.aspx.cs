using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Ekosat_Website.Classes;

namespace Ekosat_Website
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandAdd = new SqlCommand("insert into TableContact (ContactMessage, ContactMail, ContactName) values (@pmsg,@pmail,@pname)", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            commandAdd.Parameters.AddWithValue("@pmsg",tboxMessage.Text);
            commandAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandAdd.Parameters.AddWithValue("@pname", tboxName.Text);
            commandAdd.ExecuteNonQuery();
            Response.Write("Mesaj gönderildi, lütfen tekrar butona basmayınız.");
        }
    }
}