using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ShoppingCartOriginal.User
{
    public partial class UserLogin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=ShoppingcartDataBase;User ID=sa;Password=wipro@123");
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into CustomerLog" + "(Name,Gender,email,phoneNumber,Address,password)values(@Name,@Gender,@email,@phoneNumber,@Address,@password)", con);
            cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Gender", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@phoneNumber", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            cmd.ExecuteNonQuery(); 
            Confirmation.Text = "Registration Success";
            Response.Redirect("UserLogin.aspx");

            con.Close();

        }
    }
}