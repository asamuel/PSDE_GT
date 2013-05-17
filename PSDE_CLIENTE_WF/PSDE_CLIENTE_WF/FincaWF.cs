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
    public partial class FincaWF : Form
    {
        PSDE_SERVICE.PSDE_SCClient psde = new PSDE_SERVICE.PSDE_SCClient("PSDEWSEndpoint");
        PSDE_SERVICE.ListaVistaFincas fincas;
        int obj2 = 0;
        int codFinca = 0;
        public FincaWF()
        {
            InitializeComponent();
            cargarGrid();
            ((Control)this.tbEdicion).Enabled = false;
        }
        
        /*****************EVENTOS*****************/

        private void btNuevo_Click(object sender, EventArgs e)
        {
            CargaCliente();
            obj2 = 1;
            tbHaEfectiva.Text = "";
            tbHaTotalFinca.Text = "";
            tbUsoActualSuelo.Text = "";
            tbCoordenada_X_GMS.Text = "";
            tbCoordenada_X_UTM.Text = "";
            tbCoordenada_Y_GMS.Text = "";
            tbCoordenada_Y_UTM.Text = "";

            ((Control)this.tbClientes).Enabled = false;
            ((Control)this.tbEdicion).Enabled = true;
            this.tbFinca.SelectedTab = tbEdicion;
            this.tbEdicion.Text = "Registrar nueva Finca";
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;
        }

        private void btModificar_Click(object sender, EventArgs e)
        {
            CargaCliente();
            obj2 = 2;
            var obj1 = this.dataGridFincas.ColumnCount;
            var obj = "";
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;
            ((Control)this.tbClientes).Enabled = false;
            ((Control)this.tbEdicion).Enabled = true;
            tbFinca.SelectedTab = tbEdicion;

            for (int i = 0; i < obj1; i++)
            {

                if (dataGridFincas.CurrentRow.Cells[i].Value == null)
                {
                    dataGridFincas.CurrentRow.Cells[i].Value = obj;
                }
            }
            codFinca = Convert.ToInt32(dataGridFincas.CurrentRow.Cells[0].Value.ToString());

            if (dataGridFincas.CurrentRow.Cells[1].Value == null)
            { cbCodCliente.Text = ""; }
            else
            {
                cbCodCliente.Text = dataGridFincas.CurrentRow.Cells[1].Value.ToString();
            }


            if (dataGridFincas.CurrentRow.Cells[2].Value == null)
            { tbHaEfectiva.Text = ""; }
            else
            {
                tbHaEfectiva.Text = dataGridFincas.CurrentRow.Cells[2].Value.ToString();
            }


            if (dataGridFincas.CurrentRow.Cells[3].Value == null)
            { tbHaTotalFinca.Text = ""; }
            else
            {
                tbHaTotalFinca.Text = dataGridFincas.CurrentRow.Cells[3].Value.ToString();
            }

            if (dataGridFincas.CurrentRow.Cells[4].Value == null)
            { tbUsoActualSuelo.Text = ""; }
            else
            {
                tbUsoActualSuelo.Text = dataGridFincas.CurrentRow.Cells[4].Value.ToString();
            }

            if (dataGridFincas.CurrentRow.Cells[5].Value == null)
            { tbCoordenada_X_UTM.Text = ""; }
            else
            {
                tbCoordenada_X_UTM.Text = dataGridFincas.CurrentRow.Cells[5].Value.ToString();
            }

            if (dataGridFincas.CurrentRow.Cells[6].Value == null)
            { tbCoordenada_Y_UTM.Text = ""; }
            else
            {
                tbCoordenada_Y_UTM.Text = dataGridFincas.CurrentRow.Cells[6].Value.ToString();
            }

            if (dataGridFincas.CurrentRow.Cells[7].Value == null)
            { tbCoordenada_X_GMS.Text = ""; }
            else
            {
                tbCoordenada_X_GMS.Text = dataGridFincas.CurrentRow.Cells[7].Value.ToString();
            }

            if (dataGridFincas.CurrentRow.Cells[8].Value == null)
            { tbCoordenada_Y_GMS.Text = ""; }
            else
            {
                tbCoordenada_Y_GMS.Text = dataGridFincas.CurrentRow.Cells[8].Value.ToString();
            }
        }

        private void btEliminar_Click(object sender, EventArgs e)
        {
            PSDE_SERVICE.Finca fin = new PSDE_SERVICE.Finca();
            var obj = dataGridFincas.CurrentRow.Cells[0].Value.ToString();
            int res = 0;
            fin.IdFinca = Convert.ToInt32(obj);
            if (MessageBox.Show("Estas seguro que desas eliminar", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                res = psde.Eliminar_Finca(fin);
            }

            if (res.ToString() == "0")
            {
                MessageBox.Show("Registro Eliminado con éxito");
                cargarGrid();
            }
            else
            {
                MessageBox.Show("Error al eliminar el registro");
            }
        }

        private void tbBuscar_TextChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void btAceptar_Click(object sender, EventArgs e)
        {
            if (obj2 == 1)
            {
                agregarFinca();
            }
            else
            {
                modificarFinca();
            }
        }

        private void btCancelar_Click(object sender, EventArgs e)
        {
            ((Control)this.tbClientes).Enabled = true;
            ((Control)this.tbEdicion).Enabled = false;
            tbFinca.SelectedTab = tbClientes;
            cargarGrid();
            this.btEliminar.Visible = true;
            this.btModificar.Visible = true;
            this.btNuevo.Visible = true;
        }

        private void tbHaTotalFinca_Enter(object sender, EventArgs e)
        {
            tbHaTotalFinca.BackColor = Color.White;
        }

        private void tbHaEfectiva_Enter(object sender, EventArgs e)
        {
            tbHaEfectiva.BackColor = Color.White;
        }

        private void tbUsoActualSuelo_Enter(object sender, EventArgs e)
        {
            tbUsoActualSuelo.BackColor = Color.White;
        }

        /*****VALIDAR SOLO NUMEROS*****/
        private void tbHaTotalFinca_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Para obligar a que sólo se introduzcan números 
            if (Char.IsDigit(e.KeyChar))
            {
                e.Handled = false;
            }
            else
                if (Char.IsControl(e.KeyChar)) //permitir teclas de control como retroceso 
                {
                    e.Handled = false;
                }
                else
                {
                    //el resto de teclas pulsadas se desactivan 
                    e.Handled = true;
                }
        }

        private void tbHaEfectiva_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Para obligar a que sólo se introduzcan números 
            if (Char.IsDigit(e.KeyChar))
            {
                e.Handled = false;
            }
            else
                if (Char.IsControl(e.KeyChar)) //permitir teclas de control como retroceso 
                {
                    e.Handled = false;
                }
                else
                {
                    //el resto de teclas pulsadas se desactivan 
                    e.Handled = true;
                }
        }

        private void tbUsoActualSuelo_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Para obligar a que sólo se introduzcan números 
            if (Char.IsDigit(e.KeyChar))
            {
                e.Handled = false;
            }
            else
                if (Char.IsControl(e.KeyChar)) //permitir teclas de control como retroceso 
                {
                    e.Handled = false;
                }
                else
                {
                    //el resto de teclas pulsadas se desactivan 
                    e.Handled = true;
                }
        }

        /****************FUNCIONES****************/
        /*Función para cargar el Combobox de clientes*/
        private void CargaCliente()
        {
            cbCodCliente.DataSource = psde.CargarClientes();
            cbCodCliente.ValueMember = "IdCliente";
            cbCodCliente.DisplayMember = "Nombre";
        }

        /*Función para cargar el DataGridView*/
        private void cargarGrid()
        {
            fincas = psde.CargarFinca();
            dataGridFincas.DataSource = psde.CargarFinca();
            dataGridFincas.Columns[0].HeaderText = "Código Cliente";
            dataGridFincas.Columns[1].HeaderText = "Cliente";
            dataGridFincas.Columns[2].HeaderText = "Hectárea total de la finca";
            dataGridFincas.Columns[3].HeaderText = "Hectárea Efectiva";
            dataGridFincas.Columns[4].HeaderText = "Uso Actual del Suelo";
            dataGridFincas.Columns[5].HeaderText = "Coordenada X UTM";
            dataGridFincas.Columns[6].HeaderText = "Coordenada Y UTM";
            dataGridFincas.Columns[7].HeaderText = "Coordenada X GMS";
            dataGridFincas.Columns[8].HeaderText = "Coordenada Y GMS";
        }

        /*Agregar Finca*/
        private void agregarFinca()
        {
            PSDE_SERVICE.Finca fin = new PSDE_SERVICE.Finca();
            fin.CodCliente = Convert.ToInt32(cbCodCliente.SelectedValue);
            if (tbHaEfectiva.Text != "")
                fin.HaEfectiva = Convert.ToDouble(tbHaEfectiva.Text);
            if (tbHaTotalFinca.Text != "")
                fin.HaTotalFinca = Convert.ToDouble(tbHaTotalFinca.Text);
            if (tbUsoActualSuelo.Text != "")
                fin.UsoActualSuelo = Convert.ToDouble(tbUsoActualSuelo.Text);

            if (tbCoordenada_X_UTM.Text=="")
                fin.Coordenada_X_UTM="";
            else
                fin.Coordenada_X_UTM = tbCoordenada_X_UTM.Text;

            if (tbCoordenada_Y_UTM.Text == "")
                fin.Coordenada_Y_UTM = "";
            else
            fin.Coordenada_Y_UTM = tbCoordenada_Y_UTM.Text;

            if (tbCoordenada_X_GMS.Text == "")
                fin.Coordenada_X_GMS = "";
            else
            fin.Coordenada_X_GMS = tbCoordenada_X_GMS.Text;

            if (tbCoordenada_Y_GMS.Text == "")
                fin.Coordenada_Y_GMS = "";
            else
            fin.Coordenada_Y_GMS = tbCoordenada_Y_GMS.Text;

            if ((tbHaEfectiva.Text == "") || (tbHaTotalFinca.Text == "") || (tbUsoActualSuelo.Text == ""))
            {
                MessageBox.Show("Error al guardar, favor llene los campos requeridos", "Error",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
                tbHaEfectiva.BackColor = Color.LightGray;
                tbHaTotalFinca.BackColor = Color.LightGray;
                tbUsoActualSuelo.BackColor = Color.LightGray;
            }
            else
            {
                try
                {
                    var res = psde.Agregar_Finca(fin);
                    if (res.ToString() == "0")
                    {
                        MessageBox.Show("Registro agregado con éxito");
                    }
                    else
                    {
                        MessageBox.Show("Error al guardar el registro");
                    }
                }

                catch (System.Exception ex)
                {
                    MessageBox.Show("No se puede Guardar éste registro, favor revise los campos", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);

                }
                btCancelar.PerformClick();
            }

        }

        /*Modificar Finca*/
        private void modificarFinca()
        {
            PSDE_SERVICE.Finca fin = new PSDE_SERVICE.Finca();
   
            fin.CodCliente = Convert.ToInt32(cbCodCliente.SelectedValue);
            fin.HaEfectiva = Convert.ToDouble(tbHaEfectiva.Text);
            fin.HaTotalFinca = Convert.ToDouble(tbHaTotalFinca.Text);
            fin.UsoActualSuelo = Convert.ToDouble(tbUsoActualSuelo.Text);
            fin.Coordenada_X_UTM = tbCoordenada_X_UTM.Text;
            fin.Coordenada_Y_UTM = tbCoordenada_Y_UTM.Text;
            fin.Coordenada_X_GMS = tbCoordenada_X_GMS.Text;
            fin.Coordenada_Y_GMS = tbCoordenada_Y_GMS.Text;
            fin.IdFinca = codFinca;
            try
            {
                var res = psde.Modificar_Finca(fin);
                if (res.ToString() == "0")
                {
                    MessageBox.Show("Registro Modificado con éxito");
                }
                else
                {
                    MessageBox.Show("Error al Modificar el registro");
                }

            }
            catch (System.Exception ex)
            {
                MessageBox.Show("No se puede modificar el registro, revise los campos e intente nuevamente", "Error",
                MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            btCancelar.PerformClick();
        }

        /*Función Búscar*/
        private void buscar()
        {
            var groupby = fincas.Where(x => x.Cliente.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
            dataGridFincas.DataSource = groupby;
            if (tbBuscar.Text == "")
            {
                cargarGrid();
            }

        }


        private void tbClientes_Enter(object sender, EventArgs e)
        {
            Width= 1022;
            Height = 368;
        }

        private void tbEdicion_Enter(object sender, EventArgs e)
        {
            Width = 332;
            Height = 368;
        }



    }


}
