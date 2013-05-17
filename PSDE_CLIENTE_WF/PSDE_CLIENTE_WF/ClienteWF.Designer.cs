namespace PSDE_CLIENTE_WF
{
    partial class ClienteWF
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btNuevo = new System.Windows.Forms.Button();
            this.btModificar = new System.Windows.Forms.Button();
            this.btEliminar = new System.Windows.Forms.Button();
            this.tabControl1 = new Dotnetrix.Controls.TabControl();
            this.tpClientes = new System.Windows.Forms.TabPage();
            this.label11 = new System.Windows.Forms.Label();
            this.dataGridClientes = new System.Windows.Forms.DataGridView();
            this.tbBuscar = new System.Windows.Forms.TextBox();
            this.tpEdicion = new System.Windows.Forms.TabPage();
            this.cbMunicipio = new System.Windows.Forms.ComboBox();
            this.btCancelar = new System.Windows.Forms.Button();
            this.rbMasculino = new System.Windows.Forms.RadioButton();
            this.rbFemenino = new System.Windows.Forms.RadioButton();
            this.tbApellido = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.btAceptar = new System.Windows.Forms.Button();
            this.tbCodWeb = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.tbComarca = new System.Windows.Forms.TextBox();
            this.tbDireccion = new System.Windows.Forms.TextBox();
            this.tbtelefono = new System.Windows.Forms.TextBox();
            this.tbEdad = new System.Windows.Forms.TextBox();
            this.tbCedula = new System.Windows.Forms.TextBox();
            this.tbNombre = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.rbApellido = new System.Windows.Forms.RadioButton();
            this.rbCedula = new System.Windows.Forms.RadioButton();
            this.rbMunicipio = new System.Windows.Forms.RadioButton();
            this.rbNombres = new System.Windows.Forms.RadioButton();
            this.tabControl1.SuspendLayout();
            this.tpClientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridClientes)).BeginInit();
            this.tpEdicion.SuspendLayout();
            this.SuspendLayout();
            // 
            // btNuevo
            // 
            this.btNuevo.Location = new System.Drawing.Point(903, 23);
            this.btNuevo.Name = "btNuevo";
            this.btNuevo.Size = new System.Drawing.Size(75, 23);
            this.btNuevo.TabIndex = 1;
            this.btNuevo.Text = "Nuevo*";
            this.btNuevo.UseVisualStyleBackColor = true;
            this.btNuevo.Click += new System.EventHandler(this.btNuevo_Click);
            // 
            // btModificar
            // 
            this.btModificar.Location = new System.Drawing.Point(903, 52);
            this.btModificar.Name = "btModificar";
            this.btModificar.Size = new System.Drawing.Size(75, 23);
            this.btModificar.TabIndex = 2;
            this.btModificar.Text = "Modificar";
            this.btModificar.UseVisualStyleBackColor = true;
            this.btModificar.Click += new System.EventHandler(this.btModificar_Click);
            // 
            // btEliminar
            // 
            this.btEliminar.Location = new System.Drawing.Point(903, 81);
            this.btEliminar.Name = "btEliminar";
            this.btEliminar.Size = new System.Drawing.Size(75, 23);
            this.btEliminar.TabIndex = 3;
            this.btEliminar.Text = "Eliminar";
            this.btEliminar.UseVisualStyleBackColor = true;
            this.btEliminar.Click += new System.EventHandler(this.btEliminar_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tpClientes);
            this.tabControl1.Controls.Add(this.tpEdicion);
            this.tabControl1.Location = new System.Drawing.Point(2, 0);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(899, 366);
            this.tabControl1.TabIndex = 4;
            // 
            // tpClientes
            // 
            this.tpClientes.Controls.Add(this.rbApellido);
            this.tpClientes.Controls.Add(this.rbCedula);
            this.tpClientes.Controls.Add(this.rbMunicipio);
            this.tpClientes.Controls.Add(this.rbNombres);
            this.tpClientes.Controls.Add(this.label11);
            this.tpClientes.Controls.Add(this.dataGridClientes);
            this.tpClientes.Controls.Add(this.tbBuscar);
            this.tpClientes.Location = new System.Drawing.Point(4, 23);
            this.tpClientes.Name = "tpClientes";
            this.tpClientes.Padding = new System.Windows.Forms.Padding(3);
            this.tpClientes.Size = new System.Drawing.Size(891, 339);
            this.tpClientes.TabIndex = 0;
            this.tpClientes.Text = "Clientes";
            this.tpClientes.UseVisualStyleBackColor = true;
            this.tpClientes.Enter += new System.EventHandler(this.tpClientes_Enter);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(7, 11);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(40, 13);
            this.label11.TabIndex = 6;
            this.label11.Text = "Buscar";
            // 
            // dataGridClientes
            // 
            this.dataGridClientes.AllowUserToAddRows = false;
            this.dataGridClientes.AllowUserToDeleteRows = false;
            this.dataGridClientes.AllowUserToOrderColumns = true;
            this.dataGridClientes.AllowUserToResizeColumns = false;
            this.dataGridClientes.AllowUserToResizeRows = false;
            this.dataGridClientes.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridClientes.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridClientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridClientes.Location = new System.Drawing.Point(6, 34);
            this.dataGridClientes.Name = "dataGridClientes";
            this.dataGridClientes.Size = new System.Drawing.Size(882, 301);
            this.dataGridClientes.TabIndex = 0;
            // 
            // tbBuscar
            // 
            this.tbBuscar.Location = new System.Drawing.Point(75, 8);
            this.tbBuscar.Name = "tbBuscar";
            this.tbBuscar.Size = new System.Drawing.Size(147, 20);
            this.tbBuscar.TabIndex = 5;
            this.tbBuscar.Click += new System.EventHandler(this.textBox1_Click);
            this.tbBuscar.TextChanged += new System.EventHandler(this.tbBuscar_TextChanged);
            // 
            // tpEdicion
            // 
            this.tpEdicion.Controls.Add(this.cbMunicipio);
            this.tpEdicion.Controls.Add(this.btCancelar);
            this.tpEdicion.Controls.Add(this.rbMasculino);
            this.tpEdicion.Controls.Add(this.rbFemenino);
            this.tpEdicion.Controls.Add(this.tbApellido);
            this.tpEdicion.Controls.Add(this.label10);
            this.tpEdicion.Controls.Add(this.btAceptar);
            this.tpEdicion.Controls.Add(this.tbCodWeb);
            this.tpEdicion.Controls.Add(this.label9);
            this.tpEdicion.Controls.Add(this.tbComarca);
            this.tpEdicion.Controls.Add(this.tbDireccion);
            this.tpEdicion.Controls.Add(this.tbtelefono);
            this.tpEdicion.Controls.Add(this.tbEdad);
            this.tpEdicion.Controls.Add(this.tbCedula);
            this.tpEdicion.Controls.Add(this.tbNombre);
            this.tpEdicion.Controls.Add(this.label7);
            this.tpEdicion.Controls.Add(this.label8);
            this.tpEdicion.Controls.Add(this.label6);
            this.tpEdicion.Controls.Add(this.label5);
            this.tpEdicion.Controls.Add(this.label4);
            this.tpEdicion.Controls.Add(this.label3);
            this.tpEdicion.Controls.Add(this.label2);
            this.tpEdicion.Controls.Add(this.label1);
            this.tpEdicion.Location = new System.Drawing.Point(4, 23);
            this.tpEdicion.Name = "tpEdicion";
            this.tpEdicion.Padding = new System.Windows.Forms.Padding(3);
            this.tpEdicion.Size = new System.Drawing.Size(891, 339);
            this.tpEdicion.TabIndex = 1;
            this.tpEdicion.Text = "Edicion";
            this.tpEdicion.UseVisualStyleBackColor = true;
            this.tpEdicion.Enter += new System.EventHandler(this.tpEdicion_Enter);
            // 
            // cbMunicipio
            // 
            this.cbMunicipio.FormattingEnabled = true;
            this.cbMunicipio.Location = new System.Drawing.Point(100, 228);
            this.cbMunicipio.Name = "cbMunicipio";
            this.cbMunicipio.Size = new System.Drawing.Size(183, 21);
            this.cbMunicipio.TabIndex = 9;
            // 
            // btCancelar
            // 
            this.btCancelar.Location = new System.Drawing.Point(144, 301);
            this.btCancelar.Name = "btCancelar";
            this.btCancelar.Size = new System.Drawing.Size(75, 23);
            this.btCancelar.TabIndex = 108;
            this.btCancelar.Text = "Cancelar";
            this.btCancelar.UseVisualStyleBackColor = true;
            this.btCancelar.Click += new System.EventHandler(this.btCancelar_Click);
            // 
            // rbMasculino
            // 
            this.rbMasculino.AutoSize = true;
            this.rbMasculino.Location = new System.Drawing.Point(100, 98);
            this.rbMasculino.Name = "rbMasculino";
            this.rbMasculino.Size = new System.Drawing.Size(73, 17);
            this.rbMasculino.TabIndex = 3;
            this.rbMasculino.TabStop = true;
            this.rbMasculino.Text = "Masculino";
            this.rbMasculino.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbMasculino.UseVisualStyleBackColor = true;
            // 
            // rbFemenino
            // 
            this.rbFemenino.AutoSize = true;
            this.rbFemenino.Location = new System.Drawing.Point(175, 98);
            this.rbFemenino.Name = "rbFemenino";
            this.rbFemenino.Size = new System.Drawing.Size(71, 17);
            this.rbFemenino.TabIndex = 4;
            this.rbFemenino.TabStop = true;
            this.rbFemenino.Text = "Femenino";
            this.rbFemenino.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.rbFemenino.UseVisualStyleBackColor = true;
            // 
            // tbApellido
            // 
            this.tbApellido.Location = new System.Drawing.Point(100, 43);
            this.tbApellido.Name = "tbApellido";
            this.tbApellido.Size = new System.Drawing.Size(183, 20);
            this.tbApellido.TabIndex = 1;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(10, 46);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(44, 13);
            this.label10.TabIndex = 104;
            this.label10.Text = "Apellido";
            // 
            // btAceptar
            // 
            this.btAceptar.Location = new System.Drawing.Point(63, 301);
            this.btAceptar.Name = "btAceptar";
            this.btAceptar.Size = new System.Drawing.Size(75, 23);
            this.btAceptar.TabIndex = 103;
            this.btAceptar.Text = "Aceptar";
            this.btAceptar.UseVisualStyleBackColor = true;
            this.btAceptar.Click += new System.EventHandler(this.btAceptar_Click);
            // 
            // tbCodWeb
            // 
            this.tbCodWeb.Location = new System.Drawing.Point(100, 254);
            this.tbCodWeb.Name = "tbCodWeb";
            this.tbCodWeb.Size = new System.Drawing.Size(183, 20);
            this.tbCodWeb.TabIndex = 10;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(10, 257);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(66, 13);
            this.label9.TabIndex = 101;
            this.label9.Text = "Códgio Web";
            // 
            // tbComarca
            // 
            this.tbComarca.Location = new System.Drawing.Point(100, 202);
            this.tbComarca.Name = "tbComarca";
            this.tbComarca.Size = new System.Drawing.Size(183, 20);
            this.tbComarca.TabIndex = 8;
            // 
            // tbDireccion
            // 
            this.tbDireccion.Location = new System.Drawing.Point(100, 176);
            this.tbDireccion.Name = "tbDireccion";
            this.tbDireccion.Size = new System.Drawing.Size(183, 20);
            this.tbDireccion.TabIndex = 7;
            // 
            // tbtelefono
            // 
            this.tbtelefono.Location = new System.Drawing.Point(100, 150);
            this.tbtelefono.Name = "tbtelefono";
            this.tbtelefono.Size = new System.Drawing.Size(183, 20);
            this.tbtelefono.TabIndex = 6;
            // 
            // tbEdad
            // 
            this.tbEdad.Location = new System.Drawing.Point(100, 121);
            this.tbEdad.Name = "tbEdad";
            this.tbEdad.Size = new System.Drawing.Size(183, 20);
            this.tbEdad.TabIndex = 5;
            // 
            // tbCedula
            // 
            this.tbCedula.Location = new System.Drawing.Point(100, 69);
            this.tbCedula.Name = "tbCedula";
            this.tbCedula.Size = new System.Drawing.Size(183, 20);
            this.tbCedula.TabIndex = 2;
            // 
            // tbNombre
            // 
            this.tbNombre.Location = new System.Drawing.Point(100, 17);
            this.tbNombre.Name = "tbNombre";
            this.tbNombre.Size = new System.Drawing.Size(183, 20);
            this.tbNombre.TabIndex = 0;
            this.tbNombre.Tag = "";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(10, 205);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(49, 13);
            this.label7.TabIndex = 93;
            this.label7.Text = "Comarca";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(10, 231);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 13);
            this.label8.TabIndex = 92;
            this.label8.Text = "Municipio";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 153);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(49, 13);
            this.label6.TabIndex = 91;
            this.label6.Text = "Teléfono";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 124);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(32, 13);
            this.label5.TabIndex = 90;
            this.label5.Text = "Edad";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 98);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 13);
            this.label4.TabIndex = 89;
            this.label4.Text = "Sexo";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 179);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 13);
            this.label3.TabIndex = 88;
            this.label3.Text = "Dirección";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(40, 13);
            this.label2.TabIndex = 87;
            this.label2.Text = "Cédula";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 86;
            this.label1.Text = "Nombre";
            // 
            // rbApellido
            // 
            this.rbApellido.AutoSize = true;
            this.rbApellido.Location = new System.Drawing.Point(292, 11);
            this.rbApellido.Name = "rbApellido";
            this.rbApellido.Size = new System.Drawing.Size(62, 17);
            this.rbApellido.TabIndex = 12;
            this.rbApellido.TabStop = true;
            this.rbApellido.Text = "Apellido";
            this.rbApellido.UseVisualStyleBackColor = true;
            this.rbApellido.CheckedChanged += new System.EventHandler(this.rbApellido_CheckedChanged);
            // 
            // rbCedula
            // 
            this.rbCedula.AutoSize = true;
            this.rbCedula.Location = new System.Drawing.Point(363, 11);
            this.rbCedula.Name = "rbCedula";
            this.rbCedula.Size = new System.Drawing.Size(58, 17);
            this.rbCedula.TabIndex = 11;
            this.rbCedula.TabStop = true;
            this.rbCedula.Text = "Cédula";
            this.rbCedula.UseVisualStyleBackColor = true;
            this.rbCedula.CheckedChanged += new System.EventHandler(this.rbCedula_CheckedChanged);
            // 
            // rbMunicipio
            // 
            this.rbMunicipio.AutoSize = true;
            this.rbMunicipio.Location = new System.Drawing.Point(427, 9);
            this.rbMunicipio.Name = "rbMunicipio";
            this.rbMunicipio.Size = new System.Drawing.Size(70, 17);
            this.rbMunicipio.TabIndex = 10;
            this.rbMunicipio.TabStop = true;
            this.rbMunicipio.Text = "Municipio";
            this.rbMunicipio.UseVisualStyleBackColor = true;
            this.rbMunicipio.CheckedChanged += new System.EventHandler(this.rbMunicipio_CheckedChanged);
            // 
            // rbNombres
            // 
            this.rbNombres.AutoSize = true;
            this.rbNombres.Location = new System.Drawing.Point(228, 11);
            this.rbNombres.Name = "rbNombres";
            this.rbNombres.Size = new System.Drawing.Size(65, 17);
            this.rbNombres.TabIndex = 8;
            this.rbNombres.TabStop = true;
            this.rbNombres.Text = "Nombre ";
            this.rbNombres.UseVisualStyleBackColor = true;
            this.rbNombres.CheckedChanged += new System.EventHandler(this.rbNombres_CheckedChanged);
            // 
            // ClienteWF
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(982, 369);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.btEliminar);
            this.Controls.Add(this.btModificar);
            this.Controls.Add(this.btNuevo);
            this.Name = "ClienteWF";
            this.Text = "Cliente";
            this.tabControl1.ResumeLayout(false);
            this.tpClientes.ResumeLayout(false);
            this.tpClientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridClientes)).EndInit();
            this.tpEdicion.ResumeLayout(false);
            this.tpEdicion.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btNuevo;
        private System.Windows.Forms.Button btModificar;
        private System.Windows.Forms.Button btEliminar;
        private Dotnetrix.Controls.TabControl tabControl1;
        private System.Windows.Forms.TabPage tpClientes;
        private System.Windows.Forms.DataGridView dataGridClientes;
        private System.Windows.Forms.TabPage tpEdicion;
        private System.Windows.Forms.Button btCancelar;
        private System.Windows.Forms.RadioButton rbMasculino;
        private System.Windows.Forms.RadioButton rbFemenino;
        private System.Windows.Forms.TextBox tbApellido;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btAceptar;
        private System.Windows.Forms.TextBox tbCodWeb;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox tbComarca;
        private System.Windows.Forms.TextBox tbDireccion;
        private System.Windows.Forms.TextBox tbtelefono;
        private System.Windows.Forms.TextBox tbEdad;
        private System.Windows.Forms.TextBox tbCedula;
        private System.Windows.Forms.TextBox tbNombre;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbMunicipio;
        private System.Windows.Forms.TextBox tbBuscar;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.RadioButton rbApellido;
        private System.Windows.Forms.RadioButton rbCedula;
        private System.Windows.Forms.RadioButton rbMunicipio;
        private System.Windows.Forms.RadioButton rbNombres;
    }
}