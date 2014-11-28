using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class BannerControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            companyName.Text = "Houston Ticket<br />Connection";
            bizDesc.Text = "Houston Ticket Connection is an independent ticket resale agency that has been operating<br />" + 
            "since 1990. We specialize in providing preferred or hard to find seating to most<br />" +
            "concerts, sporting events to be taken place in Houston TX. We can secure tickets for<br />" +
            "these events. We sell our tickets at market price or which may be substantially lower<br />" +
            "than face value. Keep your trust on us!\n";
        }
    }
