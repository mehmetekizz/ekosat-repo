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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
            SqlCommand commandlist = new SqlCommand("Select CarModel,CarBrandID,CarFuel,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice,CarPrice,CarConfirmation,BrandID,BrandName from TableCar inner join TableBrand on TableCar.CarBrandID=TableBrand.BrandID where CarConfirmation=@pcon", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();
            commandlist.Parameters.AddWithValue("@pcon",true);
            SqlDataReader dr = commandlist.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            dr.Close();
        }
    }
}