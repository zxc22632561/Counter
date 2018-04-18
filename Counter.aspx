using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Counter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session.IsNewSession)
        {
            if (Application["counter"] == null)
            {
                Application["counter"] = 1;
            }
            else Application["counter"] = Convert.ToInt32(Application["counter"]) + 1;
        }
        Label1.Text = "本站到訪人數" + Application["counter"];
    }
}
