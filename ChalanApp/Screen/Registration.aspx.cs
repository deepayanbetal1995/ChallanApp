using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChalanApp
{
    public partial class Registration : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myconForRegistration"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string FirstName = TextBox1.Text;
                string LastName = TextBox2.Text;
                string password = TextBox3.Text;
                string gender = RadioButtonList1.SelectedValue;
                string email = TextBox5.Text;
                string country = DropDownList1.SelectedValue;
                string city = DropDownList2.SelectedValue;
                string pAddress = TextBox6.Text;
                string pincode = TextBox7.Text;
                string collegeName = TextBox8.Text;
                string collegeAddress = TextBox9.Text;
                

                con.Open();
                string qry = "insert into tbl_Registration(FirstName,LastName,PrimaryAddress,Country,City,Pincode,CollegeName,CollegeAddress,Gender,Email,User_password) values(@FirstName,@LastName,@PrimaryAddress,@Country,@City,@Pincode,@CollegeName,@CollegeAddress,@gender,@email,@password)";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("FirstName", TextBox1.Text);
                cmd.Parameters.AddWithValue("LastName", TextBox2.Text);
                cmd.Parameters.AddWithValue("PrimaryAddress", TextBox6.Text);
                cmd.Parameters.AddWithValue("Country", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("City", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("Pincode", TextBox7.Text);
                cmd.Parameters.AddWithValue("CollegeName", TextBox8.Text);
                cmd.Parameters.AddWithValue("CollegeAddress", TextBox9.Text);
                cmd.Parameters.AddWithValue("Gender", RadioButtonList1.SelectedValue);
                cmd.Parameters.AddWithValue("Email", TextBox5.Text);
                cmd.Parameters.AddWithValue("Password", TextBox3.Text);
                cmd.ExecuteNonQuery();
                //SqlDataReader sdr = cmd.ExecuteReader();
                //if (sdr.Read())
                //{
                //    Label1.Text = "Registration Sucess......!!";
                //}
                //else
                //{
                //    Label1.Text = "UserId & Password Is not correct Try again..!!";

                //}
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}

   