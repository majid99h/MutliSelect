using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multiselct
{
    public partial class _Default : Page
    {
        private readonly UserRegistrationEntities _dbContext = new UserRegistrationEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                userReg.DataSource = GetList();
                userReg.DataBind();
            }
        }
        private List<UserRegistration> GetList()
        {
            return _dbContext.UserRegistrations.ToList();
        }
        protected void Submit(object sender, EventArgs e)
        {
            string message = "";
            foreach (ListItem item in userReg.Items)
            {
                if (item.Selected)
                {
                    message += $"{item.Value} | {item.Text},";
                     
                }
            }
            lblSelected.Text = message;
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
}