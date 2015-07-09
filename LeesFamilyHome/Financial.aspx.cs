using System;

namespace LeesFamilyHome
{
    public partial class Financial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                double total = 0;
                for (int g = 0; g < dgvReport.Rows.Count; g++)
                {
                    string tot = dgvReport.Rows[g].Cells[3].Text;
                    total += Convert.ToDouble(tot);
                }

                txtTotal.Text = total.ToString();
               
            }
        }


        protected void dgvReport_DataBound(object sender, EventArgs e)
        {
            double total = 0;
            for (int g = 0; g < dgvReport.Rows.Count; g++)
            {
                string tot = dgvReport.Rows[g].Cells[3].Text;
                total += Convert.ToDouble(tot);                
            }
            txtTotal.Text = total.ToString();            
        }
    }
}