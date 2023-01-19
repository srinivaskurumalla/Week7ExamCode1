using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.Common;

namespace Infinite.Asp.Code1
{
    public partial class PositionDetailsForm : System.Web.UI.Page
    {
        private SqlConnection con = null;
        private SqlCommand cmd = null;
        int returnValue = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {

            using (con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString))
            {
                using (cmd = new SqlCommand("usp_InsertIntoPosition", con))
                { 
                    cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@PostionCode", TxtPositionCode.Text);
                cmd.Parameters.AddWithValue("@Description", TxtDescription.Text);
                cmd.Parameters.AddWithValue("@BudgetStrength", TxtBStrength.Text);
                cmd.Parameters.AddWithValue("@CurrentStrngth", TxtCStrength.Text);
                cmd.Parameters.AddWithValue("@Year", DdlYear.SelectedItem.Value);


                    //To get stored procedure return value
                    SqlParameter retVal = cmd.Parameters.Add("@Return_Value", SqlDbType.Int);
                    retVal.Direction = ParameterDirection.ReturnValue;

                    if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.ExecuteNonQuery();

                    returnValue = (int)retVal.Value;
                  
               
            }
            }
            if(returnValue == 1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Success! Position Added successfully.');", true);

            }
            else if(returnValue == -1)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Failed! PositionId is already available.');", true);

            }
        }


        protected void BtnReset_Click(object sender, EventArgs e)
        {
           
            Reset();
        }
        private void Reset()
        {
            TxtPositionCode.Text = "";
            TxtDescription.Text = "";
            TxtBStrength.Text = "";
           
            TxtCStrength.Text = "";
            DdlYear.ClearSelection();


        }
    }
}

