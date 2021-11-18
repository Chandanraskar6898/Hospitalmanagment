using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteAppointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnDelete_Click(object sender, EventArgs e)
    {
        string constr = ConfigurationManager.ConnectionStrings["HMConnection"].ConnectionString;
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("DeleteappointmentByAmount", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@amount", SqlDbType.VarChar).Value = TxtAmount.Text;


                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
    }
}