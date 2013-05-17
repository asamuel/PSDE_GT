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
    public partial class EmpleadoWF : Form
    {
        PSDE_SERVICE.PSDE_SCClient psde = new PSDE_SERVICE.PSDE_SCClient("PSDEWSEndpoint");
        PSDE_SERVICE.ListaVistaUsuarios usuarios;
        //PSDE_SERVICE.ListaVistaEventos eventos;
        int CodEmpleado = 0;
        int obj2 = 0;
        public EmpleadoWF()
        {
            InitializeComponent();
            cargarGrid();
            cargarEventos();
            ((Control)this.tbEdicion).Enabled = false;
            rbNombres.Checked = true;
        }

        private void buscar()
        {
            var groupby = usuarios.Where(x => x.Nombre.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
            if (rbNombres.Checked == true)
            {
                 dataGridEmpleados.DataSource = groupby;
            }

            if (rbApellido.Checked == true)
            {
                var groupbyapellido = usuarios.Where(x => x.Apellido.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
                groupby = groupbyapellido;
                dataGridEmpleados.DataSource = groupby;
            }

            if (rbCategoria.Checked == true)
            {
                var groupbyCategoria = usuarios.Where(x => x.Categoria.Trim().ToLower().StartsWith(tbBuscar.Text.Trim().ToLower())).ToList();
                groupby = groupbyCategoria;
                dataGridEmpleados.DataSource = groupby;
            }

            if (rbResponsable.Checked == true)
            {
                Object value;
                if (tbBuscar.Text.Length == 1)
                    value = Char.ToLower(Char.Parse(tbBuscar.Text));
                else
                    value = tbBuscar.Text.ToLower();
                var groupbyResponsable = (from d in usuarios.Where(x => x.Responsable != null) select d).Where(z => z.Responsable.Trim().ToLower().StartsWith(value.ToString().Trim())).ToList();
                groupby = groupbyResponsable;
                dataGridEmpleados.DataSource = groupby;
            }

            if (rbCedula.Checked == true)
            {
                Object value;
                if (tbBuscar.Text.Length == 1)
                    value = Char.ToLower(Char.Parse(tbBuscar.Text));
                else
                    value = tbBuscar.Text.ToLower();
                var groupbycedula = (from d in usuarios.Where(x => x.Cedula != null) select d).Where(z => z.Cedula.Trim().ToLower().StartsWith(value.ToString().Trim())).ToList();
                groupby = groupbycedula;
                dataGridEmpleados.DataSource = groupby;
            }

            if (tbBuscar.Text == "")
            {
                cargarGrid();
            }
 
        }

        private void tbBuscar_TextChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void btNuevo_Click(object sender, EventArgs e)
        {
            CargarEmpleado();
            CargarCategorias();
            obj2 = 1;
            tbNombre.Text = "";
            tbApellido.Text = "";
            tbCedula.Text = "";
            tbtelefono.Text = "";
            tbCedula.Text = "";
            tbDireccion.Text = "";
            cbCategoria.Text = "";
            cbResponsable.Text = "";
            ((Control)this.tbClientes).Enabled = false;
            ((Control)this.tbEdicion).Enabled = true;
            this.tabControl1.SelectedTab = tbEdicion;
            this.tbEdicion.Text = "Agregar un nuevo Empleado";
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;
        }

        private void btModificar_Click(object sender, EventArgs e)
        {
            CargarEmpleado();
            CargarCategorias();
            obj2 = 2;
            var obj1 = this.dataGridEmpleados.ColumnCount;
            var obj = "";
            //var obj1 = this.dataGridEmpleados.ColumnCount;
            this.btEliminar.Visible = false;
            this.btModificar.Visible = false;
            this.btNuevo.Visible = false;
            ((Control)this.tbClientes).Enabled = false;
            ((Control)this.tbEdicion).Enabled = true;
            tabControl1.SelectedTab = tbEdicion;

            for (int i = 0; i < obj1; i++)
            {

                if (dataGridEmpleados.CurrentRow.Cells[i].Value == null)
                {
                    dataGridEmpleados.CurrentRow.Cells[i].Value = obj;
                }

            }

            CodEmpleado = Convert.ToInt32(dataGridEmpleados.CurrentRow.Cells[0].Value.ToString());

            if (dataGridEmpleados.CurrentRow.Cells[1].Value == null)
            { tbNombre.Text = ""; }
            else
            {
                tbNombre.Text = dataGridEmpleados.CurrentRow.Cells[1].Value.ToString();
            }


            if (dataGridEmpleados.CurrentRow.Cells[2].Value == null)
            { tbApellido.Text = ""; }
            else
            {
                tbApellido.Text = dataGridEmpleados.CurrentRow.Cells[2].Value.ToString();
            }


            if (dataGridEmpleados.CurrentRow.Cells[6].Value == null)
            { tbCedula.Text = ""; }
            else
            {
                tbCedula.Text = dataGridEmpleados.CurrentRow.Cells[6].Value.ToString();
            }

            if (dataGridEmpleados.CurrentRow.Cells[5].Value == null)
            { tbCelular.Text = ""; }
            else
            {
                tbCelular.Text = dataGridEmpleados.CurrentRow.Cells[5].Value.ToString();
            }

            if (dataGridEmpleados.CurrentRow.Cells[3].Value == null)
            { tbtelefono.Text = ""; }
            else
            {
                tbtelefono.Text = dataGridEmpleados.CurrentRow.Cells[3].Value.ToString();
            }

            if (dataGridEmpleados.CurrentRow.Cells[4].Value == null)
            { tbDireccion.Text = ""; }
            else
            {
                tbDireccion.Text = dataGridEmpleados.CurrentRow.Cells[4].Value.ToString();
            }

            if (dataGridEmpleados.CurrentRow.Cells[7].Value == null)
            { cbResponsable.Text = ""; }
            else
            {
                cbResponsable.Text = dataGridEmpleados.CurrentRow.Cells[7].Value.ToString();
            }

            if (dataGridEmpleados.CurrentRow.Cells[8].Value == null)
            { cbCategoria.Text = ""; }
            else
            {
                cbCategoria.Text = dataGridEmpleados.CurrentRow.Cells[8].Value.ToString();
            }
        }

        private void modificarUsuario()
        {
            PSDE_SERVICE.Usuario user = new PSDE_SERVICE.Usuario();
            user.Nombre = tbNombre.Text;
            user.Apellido = tbApellido.Text;
            user.Cedula = tbCedula.Text;
            user.Telefono = tbtelefono.Text;
            user.Celular = tbCelular.Text;
            user.Direccion = tbDireccion.Text;
            user.Responsable = Convert.ToInt32(cbResponsable.SelectedValue);
            user.CodCategoriaUsuario = 1;// Convert.ToInt32(cbCategoria.SelectedValue); 

            try
            {
                var res = psde.Modificar_Usuario(user);
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


        private void agregarUsuario()
        {
            PSDE_SERVICE.Usuario user = new PSDE_SERVICE.Usuario();
            user.Nombre = tbNombre.Text;
            user.Apellido = tbApellido.Text;
            user.Cedula = tbCedula.Text;
            user.Telefono = tbtelefono.Text;
            user.Celular = tbCelular.Text;
            user.Direccion = tbDireccion.Text;
            user.Responsable = Convert.ToInt32(cbResponsable.SelectedValue);
            user.CodCategoriaUsuario = Convert.ToInt32(cbCategoria.SelectedValue); 
            try
            {
                var res = psde.Agregar_Usuario(user);
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

        private void btAceptar_Click(object sender, EventArgs e)
        {
            this.tbEdicion.Text = "Edición";
            if (obj2 == 1)
            {
                agregarUsuario();
            }
            else
            {
                modificarUsuario();
            }
        }

        private void btCancelar_Click(object sender, EventArgs e)
        {
            this.tbEdicion.Text = "Edición";
            ((Control)this.tbClientes).Enabled = true;
            ((Control)this.tbEdicion).Enabled = false;
            tabControl1.SelectedTab = tbClientes;
            cargarGrid();
            this.btEliminar.Visible = true;
            this.btModificar.Visible = true;
            this.btNuevo.Visible = true;
        }

        private void cargarEventos()
        {
            /*eventos = psde.CargarEventos();
            dataGridEventos.DataSource = psde.CargarEventos();*/

        }

        private void cargarGrid()
        {
            usuarios = psde.CargarUsuarios();
            dataGridEmpleados.DataSource = psde.CargarUsuarios();           
        }

        private void CargarEmpleado()
        {
            cbResponsable.DataSource = psde.CargarUsuarios();
            cbResponsable.ValueMember = "idUsuario";
            cbResponsable.DisplayMember = "Nombre";
        }

        private void CargarCategorias()
        {
            cbCategoria.DataSource = psde.CargarCategorias();
            cbCategoria.ValueMember = "IdCategoria";
            cbCategoria.DisplayMember = "Nombre";
        }

        private void btEliminar_Click(object sender, EventArgs e)
        {
            PSDE_SERVICE.Usuario user = new PSDE_SERVICE.Usuario();
            var obj = dataGridEmpleados.CurrentRow.Cells[0].Value.ToString();
            int res = 0;
            user.IdUsuario = Convert.ToInt32(obj);
            if (MessageBox.Show("Estas seguro que desas eliminar", "AVISO", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                res = psde.Eliminar_Usuario(user);
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

        private void tbEdicion_Enter(object sender, EventArgs e)
        {
            Width = 320;
            Height = 370;
        }

        private void tbClientes_Enter(object sender, EventArgs e)
        {
            Width = 964;
            Height = 398;
        }

        private void rbResponsable_CheckedChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void rbCedula_CheckedChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void rbCategoria_CheckedChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void rbNombres_CheckedChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            buscar();
        }

        private void tbEventos_Enter(object sender, EventArgs e)
        {
            Width = 964;
            Height = 398;
        }
    }
}
