using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TokenBox {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) {
            string[] readOnlyTokens = new string[] { "Naomi Moreno", "Logan Hernandez", "Heidi Lopez" };
            TokenBox.JSProperties["cpReadOnlyTokens"] = readOnlyTokens;
        }
    }
}