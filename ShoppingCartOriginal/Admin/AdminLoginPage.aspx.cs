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
    public partial class AdminLoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=ShoppingcartDataBase;User ID=sa;Password=wipro@123");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b1_Click(object sender, EventArgs e)
        {
            i = 0;
            con.Open();
            SqlCommand cmd =con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AdminLog where username='" + t1.Text + "' and password='" + t2.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            i = Convert.ToInt32(dt.Rows.Count.ToString());
            if(i==1)
            {
                Response.Redirect("testing.aspx");
            }
            else
            {
                l1.Text = "You have entered invalid Credentials";
            }
            con.Close();
        }
    }
}