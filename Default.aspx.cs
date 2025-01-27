using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{  // MsSql Server Connection 
    SqlConnection SQLConn = new SqlConnection("Data Source=DESKTOP-NSAEUGE\\SQLEXPRESS;Initial Catalog=TestLogin;Uid=sa;password=keskar123");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        // Vulnerable Query
        SqlDataAdapter SQLAdapter = new SqlDataAdapter(String.Format("Select * From Login Where UserName = '{0}' And Password = '{1}'", txtusername.Text, txtpassword.Text), SQLConn);

        //Prepared Statement
        //SqlDataAdapter SQLAdapter = new SqlDataAdapter(String.Format("Exec GetLogin '{0}','{1}'", txtusername.Text, txtpassword.Text), SQLConn);

        DataTable DT = new DataTable();
        SQLAdapter.Fill(DT);

        if (DT.Rows.Count > 0)
        {  // Check if the username and password is present in the database or not 
            lblmsg.Text = "Welcome to System";
            lblmsg.ForeColor = System.Drawing.Color.Green;
        }

        else
        {   // Else statement-  to give an error 
            lblmsg.Text = "Invalid username or password";
            lblmsg.ForeColor = System.Drawing.Color.Red;
        }
    }
}