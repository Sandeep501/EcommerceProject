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
    public partial class productDes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=ShoppingcartDataBase;User ID=sa;Password=wipro@123");
        int id;
        string productName, productDe, productQyt, price, image;

        protected void AddToCart_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("displayItem.aspx");
            }
            else
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from Products where id="+id;
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                d1.DataSource = dt;
                d1.DataBind();
            }
            con.Close();
        }

        protected void b1_Click(object sender, EventArgs e)
        {
           
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Products where id=" + id;
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                productName = dr["productName"].ToString();
                productDe= dr["productDes"].ToString();
                productQyt = dr["productQyt"].ToString();
                price = dr["price"].ToString();
                image = dr["image"].ToString();
            }
            if(Response.Cookies["aa"]==null)
            {
                Response.Cookies["aa"].Value = productName.ToString() + "," + productDe.ToString() + "," + productQyt.ToString() + "," + price.ToString() + "," + image.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);

            }
            else
            {
                Response.Cookies["aa"].Value = Response.Cookies["aa"].Value+"|"+productName.ToString() + "," + productDe.ToString() + "," + productQyt.ToString() + "," + price.ToString() + "," + image.ToString();
                Response.Cookies["aa"].Expires = DateTime.Now.AddDays(1);
            }

        }
    }
}