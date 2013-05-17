using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PSDE_CLIENTE_WF.PSDE_SERVICE;

namespace PSDE_CLIENTE_WF
{
    public partial class ClienteWF : Form
    {
        PSDE_SERVICE.PSDE_SCClient psde = new PSDE_SERVICE.PSDE_SCClient("PSDEWSEndpoint");
        PSDE_SERVICE.ListaVistaClientes clientes;
        int obj2 = 0;
        int idCliente = 0;
        public ClienteWF()
        {
            InitializeComponent();
            cargarGrid();
            ((Control)this.tpEdicion).Enabled = false;
            rbNombres.Checked = true;
        }

        private void cargarGrid()
        {
            clientes=psde.CargarClientes();
           
            dataGridClientes.DataSource = clientes;
            
            
        //this.dataGridClientes.Columns[0].Visibility = Visibility.Hidden;
        //dataGridClientes.VerticalScrollBarVisibility = ScrollBarVisibility.Visible;
        //dataGridClientes.HorizontalScrollBarVisibility = ScrollBarVisibility.Visible;
        }

        private void btNuevo_Click(object sender, EventArgs e)
        {
            obj2 = 1;
            ((Control)this.tpClientes).Enabled = false;
            ((Control)this.tpEdicion).Enabled = true;
            this.tabControl1.SelectedTab = tpEdicion;
            this.tpEdicion.Text = "Agregar un nuevo Cliente";
            cargarComboMunicipio();
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;

        }

        private void btModificar_Click(object sender, EventArgs e)
        {
            cargarComboMunicipio();
            obj2 = 0;
            var obj="";
            var obj1 = this.dataGridClientes.ColumnCount;
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;

            for (int i = 0; i < obj1; i++)
            {

                if (dataGridClientes.CurrentRow.Cells[i].Value == null)
                {
                    dataGridClientes.CurrentRow.Cells[i].Value = obj;
                }

            }
            ((Control)this.tpClientes).Enabled = false;
            ((Control)this.tpEdicion).Enabled = true;
            tabControl1.SelectedTab = tpEdicion;

            idCliente = Convert.ToInt32(dataGridClientes.CurrentRow.Cells[0].Value.ToString()); 
            tbNombre.Text = dataGridClientes.CurrentRow.Cells[1].Value.ToString();
            tbApellido.Text = dataGridClientes.CurrentRow.Cells[2].Value.ToString();
            if (dataGridClientes.CurrentRow.Cells[4].Value.ToString() == "Masculino")
            {
                rbMasculino.Checked = true;
            }
            else if (dataGridClientes.CurrentRow.Cells[4].Value.ToString() == "Femenino")
            {
                rbFemenino.Checked = true;
            }
            else if (dataGridClientes.CurrentRow.Cells[4].Value.ToString() == "")
            {
                rbMasculino.Checked = false;
                rbFemenino.Checked = false;
            }

            

            tbCedula.Text = dataGridClientes.CurrentRow.Cells[3].Value.ToString();
            if (dataGridClientes.CurrentRow.Cells[5].Value == null)
            {tbEdad.Text = "";}
            else { tbEdad.Text = dataGridClientes.CurrentRow.Cells[5].Value.ToString(); }
            tbtelefono.Text = dataGridClientes.CurrentRow.Cells[6].Value.ToString();
            tbDireccion.Text = dataGridClientes.CurrentRow.Cells[7].Value.ToString();
            tbComarca.Text = dataGridClientes.CurrentRow.Cells[8].Value.ToString();
            cbMunicipio.Text = dataGridClientes.CurrentRow.Cells[9].Value.ToString();
            tbCodWeb.Text = dataGridClientes.CurrentRow.Cells[10].Value.ToString();
        }

        private void cargarComboMunicipio()
        {

            cbMunicipio.DataSource = psde.CargarMunicipios();
            cbMunicipio.ValueMember = "idMunicipio";
            cbMunicipio.DisplayMember = "Nombre";
        }


    

        private void btEliminar_Click(object sender, EventArgs e)
        {
            PSDE_SERVICE.Cliente client = new PSDE_SERVICE.Cliente();
            var obj=dataGridClientes.CurrentRow.Cells[0].Value.ToString();
            int res=0;
            client.IdCliente = Convert.ToInt32(obj); 
           

            if (MessageBox.Show("Estas seguro que desas eliminar", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                res = psde.Eliminar_Cliente(client);
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

        private void btAceptar_Click(object sender, EventArgs e)
        {
            if (obj2 == 1)
            {
                agregarCliente();
            }
            else {
                modificarCliente();
            }
        }
                 
    
        private void modificarCliente()
        {
            PSDE_SERVICE.Cliente client = new PSDE_SERVICE.Cliente();

            client.IdCliente = idCliente;
            client.Nombre = tbNombre.Text;
            client.Apellido = tbApellido.Text;
            client.Cedula = tbCedula.Text;
            client.CodMunicipio = Convert.ToInt32(cbMunicipio.SelectedValue);
            client.CodWeb = tbCodWeb.Text;
            client.Direccion = tbDireccion.Text;
            if (tbEdad.Text != "")
            {client.Edad = Convert.ToInt32(tbEdad.Text);}
            else { client.Edad = null; }
            client.Telefono = tbtelefono.Text;
            client.Comarca = tbComarca.Text;
            if (rbFemenino.Checked == true)

                client.Sexo = false;//Femenino=0
            else
                client.Sexo = true;//Masculino=1

            try
            {
                var res = psde.Modificar_Cliente(client);
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
                MessageBox.Show("No se puede Guardar el registro, Ya que esta relacionado", "Error",
        MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            btCancelar.PerformClick();
        }


        private void agregarCliente()
        {
            PSDE_SERVICE.Cliente client = new PSDE_SERVICE.Cliente();

            client.Nombre = tbNombre.Text;
            client.Apellido = tbApellido.Text;
            client.Cedula = tbCedula.Text;
            client.CodMunicipio = Convert.ToInt32(cbMunicipio.SelectedValue);
            client.CodWeb = tbCodWeb.Text;
            client.Direccion = tbDireccion.Text;
            if (tbEdad.Text != "")
            {
                client.Edad = Convert.ToInt32(tbEdad.Text);
            }
            client.Telefono = tbtelefono.Text;
            client.Comarca = tbComarca.Text;
            if (rbFemenino.Checked == true)

                client.Sexo = false;//Femenino=0
            else
                client.Sexo = true;//Masculino=1

            try
            {
                var res = psde.Agregar_Cliente(client);
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
                MessageBox.Show("No se puede Guardar el registro, Ya que esta relacionado", "Error",
        MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
            btCancelar.PerformClick();
        }

        private void btCancelar_Click(object sender, EventArgs e)
        {
            ((Control)this.tpClientes).Enabled = true;
            ((Control)this.tpEdicion).Enabled = false;
            tabControl1.SelectedTab = tpClientes;
            cargarGrid();
            this.btEliminar.Visible = true;
            this.btModificar.Visible = true;
            this.btNuevo.Visible = true;
        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            this.tbBuscar.Text = "";
        }

        private void Buscar()
        {
            var groupby = clientes.Where(x => x.Nombre.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
            if (rbNombres.Checked == true)
            {
                dataGridClientes.DataSource = groupby;
            }

            if (rbApellido.Checked == true)
            {
                var groupbyapellido = clientes.Where(x => x.Apellido.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
                groupby = groupbyapellido;
                dataGridClientes.DataSource = groupby;
            }

            if (rbCedula.Checked == true)
            {
                Object value;
                    if(tbBuscar.Text.Length==1)
                     value= Char.ToLower(Char.Parse(tbBuscar.Text));
                    else
                        value =tbBuscar.Text.ToLower();
                    var groupbycedula = (from d in clientes.Where(x => x.Cedula != null) select d).Where(z => z.Cedula.Trim().ToLower().StartsWith(value.ToString().Trim())).ToList();
                    groupby = groupbycedula;
                    dataGridClientes.DataSource = groupby;
            }

            if (rbMunicipio.Checked == true)
            {
                Object value;
                if (tbBuscar.Text.Length == 1)
                    value = Char.ToLower(Char.Parse(tbBuscar.Text));
                else
                    value = tbBuscar.Text.ToLower();
                    var groupbyMunicipio = (from d in clientes.Where(x => x.Municipio != null) select d).Where(z => z.Municipio.Trim().ToLower().StartsWith(value.ToString().Trim())).ToList();
                    groupby = groupbyMunicipio;
                    dataGridClientes.DataSource = groupby;
            }

            if (tbBuscar.Text == "")
            {
                cargarGrid();
            }
 
        }

        private void tbBuscar_TextChanged(object sender, EventArgs e)
        {
            Buscar();
        }


        private void tpEdicion_Enter(object sender, EventArgs e)
        {
            Width = 318;
            Height = 405;
        }

        private void tpClientes_Enter(object sender, EventArgs e)
        {
            Width = 1002;
            Height = 405;
        }

        private void rbNombres_CheckedChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        private void rbApellido_CheckedChanged(object sender, EventArgs e)
        {
            Buscar();
        }

        private void rbCedula_CheckedChanged(object sender, EventArgs e)
        {
            Buscar();
        }


        private void rbMunicipio_CheckedChanged(object sender, EventArgs e)
        {
            Buscar();
        }



        
            
       

   
        }

    }

