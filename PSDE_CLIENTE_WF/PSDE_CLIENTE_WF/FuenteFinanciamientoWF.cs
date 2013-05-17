using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PSDE_CLIENTE_WF
{
    public partial class FuenteFinanciamientoWF : Form
    {
        PSDE_SERVICE.PSDE_SCClient psde = new PSDE_SERVICE.PSDE_SCClient("PSDEWSEndpoint");
        public FuenteFinanciamientoWF()
        {
            InitializeComponent();
        }

        private void FuenteFinanciamientoWF_Load(object sender, EventArgs e)
        {
            cargarDatagridFF();
        }

        private void cargarDatagridFF()
        {
         //   this.dtgFuenteFinanciamiento.DataSource = psde.CargarFuenteFinanciamiento();
        }
    }
}
