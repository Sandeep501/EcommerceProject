using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShoppingCartOriginal.Admin
{
    public partial class addProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=ShoppingcartDataBase;User ID=sa;Password=wipro@123");
        string b;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            
            f1.SaveAs(Request.PhysicalApplicationPath + "./images/" + f1.FileName.ToString());
            b= "images/" + f1.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Products values('" + t1.Text + "','" + t2.Text + "'," + t4.Text + "," + t3.Text +",'"+ b.ToString() + "','" + t5.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }

    
}