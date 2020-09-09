using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Management;

namespace EjemploDatosModerboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ManagementObjectSearcher mos = new ManagementObjectSearcher("root\\CIMV2", "SELECT * FROM Win32_BaseBoard");
            string Texto = "";
            foreach (ManagementObject mo in mos.Get())
            {
                try
                {Texto = ("Serial Number: " +
                        mo.GetPropertyValue("SerialNumber").ToString());
                    Texto = Texto + "/" + ("Manufacturer: " +
                        mo.GetPropertyValue("Manufacturer").ToString());
                    Texto = Texto + "/" + ("Product: " +
                        mo.GetPropertyValue("Product").ToString());
                }
                catch
                { }
            }

            ASPxLabel1.Text = Texto;

        }


        public static string GetMBSN()
        {
            //Getting list of motherboards 
            ManagementObjectCollection mbCol = new ManagementClass("Win32_BaseBoard").GetInstances();
            //Enumerating the list 
            ManagementObjectCollection.ManagementObjectEnumerator mbEnum = mbCol.GetEnumerator();
            //Move the cursor to the first element of the list (and most probably the only one) 
            mbEnum.MoveNext();
            //Getting the serial number of that specific motherboard 
            return ((ManagementObject)(mbEnum.Current)).Properties["SerialNumber"].Value.ToString();
        }
    }
}