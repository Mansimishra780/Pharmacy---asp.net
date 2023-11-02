using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pharma
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double area = 0;
            double dimension1 = Convert.ToDouble(txtTriangleBase);
            double dimension2 = Convert.ToDouble(txtTriangleHeight);
                switch (ddlShapes.SelectedValue)
                {
                    case "Triangle":
                        area = 0.5 * dimension1 * dimension2;
                        break;
                    case "Rectangle":
                        area = dimension1 * dimension2;
                        break;
                    case "Circle":
                        area = Math.PI * Math.Pow(dimension1, 2);
                        break;
                    case "Square":
                        area = Math.Pow(dimension1, 2);
                        break;
                    case "default":
                        lblResult.Text = "Invalid input. Please enter numeric values.";
                        break;
            }
                lblResult.Text = $"The area is: {area.ToString()}";
            }
            
    }
}