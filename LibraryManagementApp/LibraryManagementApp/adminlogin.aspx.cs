using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementApp
{
    public partial class adminlogin : System.Web.UI.Page
    {
        //for connection with backend
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //con object of sql connection type
                SqlConnection con = new SqlConnection(strcon);
                //check connection is open with db
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from admin_login_tbl where username='" + TextBox1.Text.Trim() + 
                    "' AND password='" + TextBox2.Text.Trim() + "'", con);
                // data reader is connected with db and returing what above query is executing
                SqlDataReader dr = cmd.ExecuteReader();
                //HasRows will check matching records in rows
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        // get value of memberid which is at 8th position in table
                        //Response.Write("<script>alert('" + dr.GetValue(0).ToString() + "');</script>");
                        Response.Write("<script>alert('Login Successfull');</script>");
                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }
                    //after successfull login redirect to homepage
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }

        }
    }
}