using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class App_Session : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Application["x"] == null)
        {
            Application["x"] = 1;
        }
        else Application["x"] = Convert.ToInt32(Application["x"]) + 1;

        if (Session["x"] == null)
            Session["x"] = 1;
        else Session["x"] = Convert.ToInt32(Session["x"]) + 1; 
    }
    protected void Page_PreRender(object sender,EventArgs e)
    {
        Label1.Text = "Application[\"x\"] = " + Application["x"];
        Label2.Text = "Session[\"x\"] = " + Session["x"];
        //不同瀏覽器瀏覽時Application會記錄另一個瀏覽器Application的值
    }
}
