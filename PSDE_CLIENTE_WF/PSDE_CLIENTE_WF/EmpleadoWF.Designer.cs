namespace PSDE_CLIENTE_WF
{
    partial class EmpleadoWF
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
            this.tabControl1 = new Dotnetrix.Controls.TabControl();
            this.tbClientes = new System.Windows.Forms.TabPage();
            this.rbApellido = new System.Windows.Forms.RadioButton();
            this.rbCedula = new System.Windows.Forms.RadioButton();
            this.rbResponsable = new System.Windows.Forms.RadioButton();
            this.rbCategoria = new System.Windows.Forms.RadioButton();
            this.rbNombres = new System.Windows.Forms.RadioButton();
            this.label5 = new System.Windows.Forms.Label();
            this.tbBuscar = new System.Windows.Forms.TextBox();
            this.dataGridEmpleados = new System.Windows.Forms.DataGridView();
            this.tbEdicion = new System.Windows.Forms.TabPage();
            this.tbCelular = new System.Windows.Forms.TextBox();
            this.tbApellido = new System.Windows.Forms.TextBox();
            this.tbDireccion = new System.Windows.Forms.TextBox();
            this.tbtelefono = new System.Windows.Forms.TextBox();
            this.tbCedula = new System.Windows.Forms.TextBox();
            this.tbNombre = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.cbResponsable = new System.Windows.Forms.ComboBox();
            this.cbCategoria = new System.Windows.Forms.ComboBox();
            this.btCancelar = new System.Windows.Forms.Button();
            this.label10 = new System.Windows.Forms.Label();
            this.btAceptar = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.btEliminar = new System.Windows.Forms.Button();
            this.btModificar = new System.Windows.Forms.Button();
            this.btNuevo = new System.Windows.Forms.Button();
            this.tbEventos = new System.Windows.Forms.TabPage();
            this.tbEventosRestantes = new System.Windows.Forms.TextBox();
            this.tbApellidoA = new System.Windows.Forms.TextBox();
            this.tbEventosEjecutados = new System.Windows.Forms.TextBox();
            this.tbEventosPactados = new System.Windows.Forms.TextBox();
            this.tbNombreE = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.dataGridEventos = new System.Windows.Forms.DataGridView();
            this.tabControl1.SuspendLayout();
            this.tbClientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridEmpleados)).BeginInit();
            this.tbEdicion.SuspendLayout();
            this.tbEventos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridEventos)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tbClientes);
            this.tabControl1.Controls.Add(this.tbEdicion);
            this.tabControl1.Controls.Add(this.tbEventos);
            this.tabControl1.Location = new System.Drawing.Point(2, 3);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(857, 353);
            this.tabControl1.TabIndex = 12;
            // 
            // tbClientes
            // 
            this.tbClientes.Controls.Add(this.rbApellido);
            this.tbClientes.Controls.Add(this.rbCedula);
            this.tbClientes.Controls.Add(this.rbResponsable);
            this.tbClientes.Controls.Add(this.rbCategoria);
            this.tbClientes.Controls.Add(this.rbNombres);
            this.tbClientes.Controls.Add(this.label5);
            this.tbClientes.Controls.Add(this.tbBuscar);
            this.tbClientes.Controls.Add(this.dataGridEmpleados);
            this.tbClientes.Location = new System.Drawing.Point(4, 23);
            this.tbClientes.Name = "tbClientes";
            this.tbClientes.Padding = new System.Windows.Forms.Padding(3);
            this.tbClientes.Size = new System.Drawing.Size(849, 309);
            this.tbClientes.TabIndex = 0;
            this.tbClientes.Text = "Clientes";
            this.tbClientes.UseVisualStyleBackColor = true;
            this.tbClientes.Enter += new System.EventHandler(this.tbClientes_Enter);
            // 
            // rbApellido
            // 
            this.rbApellido.AutoSize = true;
            this.rbApellido.Location = new System.Drawing.Point(259, 18);
            this.rbApellido.Name = "rbApellido";
            this.rbApellido.Size = new System.Drawing.Size(62, 17);
            this.rbApellido.TabIndex = 7;
            this.rbApellido.TabStop = true;
            this.rbApellido.Text = "Apellido";
            this.rbApellido.UseVisualStyleBackColor = true;
            this.rbApellido.CheckedChanged += new System.EventHandler(this.radioButton1_CheckedChanged);
            // 
            // rbCedula
            // 
            this.rbCedula.AutoSize = true;
            this.rbCedula.Location = new System.Drawing.Point(330, 18);
            this.rbCedula.Name = "rbCedula";
            this.rbCedula.Size = new System.Drawing.Size(58, 17);
            this.rbCedula.TabIndex = 6;
            this.rbCedula.TabStop = true;
            this.rbCedula.Text = "Cédula";
            this.rbCedula.UseVisualStyleBackColor = true;
            this.rbCedula.CheckedChanged += new System.EventHandler(this.rbCedula_CheckedChanged);
            // 
            // rbResponsable
            // 
            this.rbResponsable.AutoSize = true;
            this.rbResponsable.Location = new System.Drawing.Point(477, 18);
            this.rbResponsable.Name = "rbResponsable";
            this.rbResponsable.Size = new System.Drawing.Size(87, 17);
            this.rbResponsable.TabIndex = 5;
            this.rbResponsable.TabStop = true;
            this.rbResponsable.Text = "Responsable";
            this.rbResponsable.UseVisualStyleBackColor = true;
            this.rbResponsable.CheckedChanged += new System.EventHandler(this.rbResponsable_CheckedChanged);
            // 
            // rbCategoria
            // 
            this.rbCategoria.AutoSize = true;
            this.rbCategoria.Location = new System.Drawing.Point(393, 18);
            this.rbCategoria.Name = "rbCategoria";
            this.rbCategoria.Size = new System.Drawing.Size(72, 17);
            this.rbCategoria.TabIndex = 4;
            this.rbCategoria.TabStop = true;
            this.rbCategoria.Text = "Categoría";
            this.rbCategoria.UseVisualStyleBackColor = true;
            this.rbCategoria.CheckedChanged += new System.EventHandler(this.rbCategoria_CheckedChanged);
            // 
            // rbNombres
            // 
            this.rbNombres.AutoSize = true;
            this.rbNombres.Location = new System.Drawing.Point(195, 18);
            this.rbNombres.Name = "rbNombres";
            this.rbNombres.Size = new System.Drawing.Size(65, 17);
            this.rbNombres.TabIndex = 3;
            this.rbNombres.TabStop = true;
            this.rbNombres.Text = "Nombre ";
            this.rbNombres.UseVisualStyleBackColor = true;
            this.rbNombres.CheckedChanged += new System.EventHandler(this.rbNombres_CheckedChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 23);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(40, 13);
            this.label5.TabIndex = 2;
            this.label5.Text = "Buscar";
            // 
            // tbBuscar
            // 
            this.tbBuscar.Location = new System.Drawing.Point(52, 20);
            this.tbBuscar.Name = "tbBuscar";
            this.tbBuscar.Size = new System.Drawing.Size(137, 20);
            this.tbBuscar.TabIndex = 1;
            this.tbBuscar.TextChanged += new System.EventHandler(this.tbBuscar_TextChanged);
            // 
            // dataGridEmpleados
            // 
            this.dataGridEmpleados.AllowUserToAddRows = false;
            this.dataGridEmpleados.AllowUserToDeleteRows = false;
            this.dataGridEmpleados.AllowUserToOrderColumns = true;
            this.dataGridEmpleados.AllowUserToResizeColumns = false;
            this.dataGridEmpleados.AllowUserToResizeRows = false;
            this.dataGridEmpleados.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridEmpleados.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridEmpleados.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridEmpleados.Location = new System.Drawing.Point(6, 46);
            this.dataGridEmpleados.Name = "dataGridEmpleados";
            this.dataGridEmpleados.Size = new System.Drawing.Size(838, 261);
            this.dataGridEmpleados.TabIndex = 0;
            // 
            // tbEdicion
            // 
            this.tbEdicion.Controls.Add(this.tbCelular);
            this.tbEdicion.Controls.Add(this.tbApellido);
            this.tbEdicion.Controls.Add(this.tbDireccion);
            this.tbEdicion.Controls.Add(this.tbtelefono);
            this.tbEdicion.Controls.Add(this.tbCedula);
            this.tbEdicion.Controls.Add(this.tbNombre);
            this.tbEdicion.Controls.Add(this.label4);
            this.tbEdicion.Controls.Add(this.cbResponsable);
            this.tbEdicion.Controls.Add(this.cbCategoria);
            this.tbEdicion.Controls.Add(this.btCancelar);
            this.tbEdicion.Controls.Add(this.label10);
            this.tbEdicion.Controls.Add(this.btAceptar);
            this.tbEdicion.Controls.Add(this.label7);
            this.tbEdicion.Controls.Add(this.label8);
            this.tbEdicion.Controls.Add(this.label6);
            this.tbEdicion.Controls.Add(this.label3);
            this.tbEdicion.Controls.Add(this.label2);
            this.tbEdicion.Controls.Add(this.label1);
            this.tbEdicion.Location = new System.Drawing.Point(4, 23);
            this.tbEdicion.Name = "tbEdicion";
            this.tbEdicion.Padding = new System.Windows.Forms.Padding(3);
            this.tbEdicion.Size = new System.Drawing.Size(849, 309);
            this.tbEdicion.TabIndex = 1;
            this.tbEdicion.Text = "Edicion";
            this.tbEdicion.UseVisualStyleBackColor = true;
            this.tbEdicion.Enter += new System.EventHandler(this.tbEdicion_Enter);
            // 
            // tbCelular
            // 
            this.tbCelular.Location = new System.Drawing.Point(100, 120);
            this.tbCelular.Name = "tbCelular";
            this.tbCelular.Size = new System.Drawing.Size(183, 20);
            this.tbCelular.TabIndex = 4;
            // 
            // tbApellido
            // 
            this.tbApellido.Location = new System.Drawing.Point(100, 43);
            this.tbApellido.Name = "tbApellido";
            this.tbApellido.Size = new System.Drawing.Size(183, 20);
            this.tbApellido.TabIndex = 1;
            // 
            // tbDireccion
            // 
            this.tbDireccion.Location = new System.Drawing.Point(100, 146);
            this.tbDireccion.Name = "tbDireccion";
            this.tbDireccion.Size = new System.Drawing.Size(183, 20);
            this.tbDireccion.TabIndex = 5;
            // 
            // tbtelefono
            // 
            this.tbtelefono.Location = new System.Drawing.Point(100, 94);
            this.tbtelefono.Name = "tbtelefono";
            this.tbtelefono.Size = new System.Drawing.Size(183, 20);
            this.tbtelefono.TabIndex = 3;
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
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 13);
            this.label4.TabIndex = 110;
            this.label4.Text = "Celular";
            // 
            // cbResponsable
            // 
            this.cbResponsable.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cbResponsable.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbResponsable.FormattingEnabled = true;
            this.cbResponsable.Location = new System.Drawing.Point(100, 171);
            this.cbResponsable.Name = "cbResponsable";
            this.cbResponsable.Size = new System.Drawing.Size(183, 21);
            this.cbResponsable.TabIndex = 6;
            // 
            // cbCategoria
            // 
            this.cbCategoria.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cbCategoria.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbCategoria.DisplayMember = "IdCategoria";
            this.cbCategoria.FormattingEnabled = true;
            this.cbCategoria.Location = new System.Drawing.Point(100, 198);
            this.cbCategoria.Name = "cbCategoria";
            this.cbCategoria.Size = new System.Drawing.Size(183, 21);
            this.cbCategoria.TabIndex = 7;
            this.cbCategoria.ValueMember = "IdCategoria";
            // 
            // btCancelar
            // 
            this.btCancelar.Location = new System.Drawing.Point(123, 242);
            this.btCancelar.Name = "btCancelar";
            this.btCancelar.Size = new System.Drawing.Size(75, 23);
            this.btCancelar.TabIndex = 9;
            this.btCancelar.Text = "Cancelar";
            this.btCancelar.UseVisualStyleBackColor = true;
            this.btCancelar.Click += new System.EventHandler(this.btCancelar_Click);
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
            this.btAceptar.Location = new System.Drawing.Point(42, 242);
            this.btAceptar.Name = "btAceptar";
            this.btAceptar.Size = new System.Drawing.Size(75, 23);
            this.btAceptar.TabIndex = 8;
            this.btAceptar.Text = "Aceptar";
            this.btAceptar.UseVisualStyleBackColor = true;
            this.btAceptar.Click += new System.EventHandler(this.btAceptar_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(10, 175);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(69, 13);
            this.label7.TabIndex = 93;
            this.label7.Text = "Responsable";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(10, 201);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(54, 13);
            this.label8.TabIndex = 92;
            this.label8.Text = "Categoría";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 97);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(49, 13);
            this.label6.TabIndex = 91;
            this.label6.Text = "Teléfono";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 149);
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
            // btEliminar
            // 
            this.btEliminar.Location = new System.Drawing.Point(865, 84);
            this.btEliminar.Name = "btEliminar";
            this.btEliminar.Size = new System.Drawing.Size(75, 23);
            this.btEliminar.TabIndex = 11;
            this.btEliminar.Text = "Eliminar";
            this.btEliminar.UseVisualStyleBackColor = true;
            this.btEliminar.Click += new System.EventHandler(this.btEliminar_Click);
            // 
            // btModificar
            // 
            this.btModificar.Location = new System.Drawing.Point(865, 55);
            this.btModificar.Name = "btModificar";
            this.btModificar.Size = new System.Drawing.Size(75, 23);
            this.btModificar.TabIndex = 10;
            this.btModificar.Text = "Modificar";
            this.btModificar.UseVisualStyleBackColor = true;
            this.btModificar.Click += new System.EventHandler(this.btModificar_Click);
            // 
            // btNuevo
            // 
            this.btNuevo.Location = new System.Drawing.Point(865, 26);
            this.btNuevo.Name = "btNuevo";
            this.btNuevo.Size = new System.Drawing.Size(75, 23);
            this.btNuevo.TabIndex = 9;
            this.btNuevo.Text = "Nuevo*";
            this.btNuevo.UseVisualStyleBackColor = true;
            this.btNuevo.Click += new System.EventHandler(this.btNuevo_Click);
            // 
            // tbEventos
            // 
            this.tbEventos.Controls.Add(this.dataGridEventos);
            this.tbEventos.Controls.Add(this.tbEventosRestantes);
            this.tbEventos.Controls.Add(this.tbApellidoA);
            this.tbEventos.Controls.Add(this.tbEventosEjecutados);
            this.tbEventos.Controls.Add(this.tbEventosPactados);
            this.tbEventos.Controls.Add(this.tbNombreE);
            this.tbEventos.Controls.Add(this.label9);
            this.tbEventos.Controls.Add(this.label11);
            this.tbEventos.Controls.Add(this.label12);
            this.tbEventos.Controls.Add(this.label13);
            this.tbEventos.Controls.Add(this.label14);
            this.tbEventos.Location = new System.Drawing.Point(4, 23);
            this.tbEventos.Name = "tbEventos";
            this.tbEventos.Padding = new System.Windows.Forms.Padding(3);
            this.tbEventos.Size = new System.Drawing.Size(849, 326);
            this.tbEventos.TabIndex = 2;
            this.tbEventos.Text = "Eventos";
            this.tbEventos.UseVisualStyleBackColor = true;
            this.tbEventos.Enter += new System.EventHandler(this.tbEventos_Enter);
            // 
            // tbEventosRestantes
            // 
            this.tbEventosRestantes.Location = new System.Drawing.Point(622, 6);
            this.tbEventosRestantes.Name = "tbEventosRestantes";
            this.tbEventosRestantes.Size = new System.Drawing.Size(107, 20);
            this.tbEventosRestantes.TabIndex = 115;
            // 
            // tbApellidoA
            // 
            this.tbApellidoA.Location = new System.Drawing.Point(110, 32);
            this.tbApellidoA.Name = "tbApellidoA";
            this.tbApellidoA.Size = new System.Drawing.Size(183, 20);
            this.tbApellidoA.TabIndex = 112;
            // 
            // tbEventosEjecutados
            // 
            this.tbEventosEjecutados.Location = new System.Drawing.Point(404, 32);
            this.tbEventosEjecutados.Name = "tbEventosEjecutados";
            this.tbEventosEjecutados.Size = new System.Drawing.Size(107, 20);
            this.tbEventosEjecutados.TabIndex = 114;
            // 
            // tbEventosPactados
            // 
            this.tbEventosPactados.Location = new System.Drawing.Point(404, 7);
            this.tbEventosPactados.Name = "tbEventosPactados";
            this.tbEventosPactados.Size = new System.Drawing.Size(107, 20);
            this.tbEventosPactados.TabIndex = 113;
            // 
            // tbNombreE
            // 
            this.tbNombreE.Location = new System.Drawing.Point(110, 6);
            this.tbNombreE.Name = "tbNombreE";
            this.tbNombreE.Size = new System.Drawing.Size(183, 20);
            this.tbNombreE.TabIndex = 111;
            this.tbNombreE.Tag = "";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(517, 11);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(97, 13);
            this.label9.TabIndex = 120;
            this.label9.Text = "Eventos Restantes";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(5, 35);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(44, 13);
            this.label11.TabIndex = 119;
            this.label11.Text = "Apellido";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(299, 35);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(102, 13);
            this.label12.TabIndex = 118;
            this.label12.Text = "Eventos Ejecutados";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(299, 10);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(94, 13);
            this.label13.TabIndex = 117;
            this.label13.Text = "Eventos Pactados";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(5, 9);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(44, 13);
            this.label14.TabIndex = 116;
            this.label14.Text = "Nombre";
            // 
            // dataGridEventos
            // 
            this.dataGridEventos.AllowUserToAddRows = false;
            this.dataGridEventos.AllowUserToDeleteRows = false;
            this.dataGridEventos.AllowUserToOrderColumns = true;
            this.dataGridEventos.AllowUserToResizeColumns = false;
            this.dataGridEventos.AllowUserToResizeRows = false;
            this.dataGridEventos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridEventos.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridEventos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridEventos.Location = new System.Drawing.Point(8, 58);
            this.dataGridEventos.Name = "dataGridEventos";
            this.dataGridEventos.Size = new System.Drawing.Size(838, 261);
            this.dataGridEventos.TabIndex = 121;
            // 
            // EmpleadoWF
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(948, 360);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.btEliminar);
            this.Controls.Add(this.btModificar);
            this.Controls.Add(this.btNuevo);
            this.Name = "EmpleadoWF";
            this.Text = "Empleados";
            this.tabControl1.ResumeLayout(false);
            this.tbClientes.ResumeLayout(false);
            this.tbClientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridEmpleados)).EndInit();
            this.tbEdicion.ResumeLayout(false);
            this.tbEdicion.PerformLayout();
            this.tbEventos.ResumeLayout(false);
            this.tbEventos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridEventos)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private Dotnetrix.Controls.TabControl tabControl1;
        private System.Windows.Forms.TabPage tbClientes;
        private System.Windows.Forms.TextBox tbBuscar;
        private System.Windows.Forms.DataGridView dataGridEmpleados;
        private System.Windows.Forms.TabPage tbEdicion;
        private System.Windows.Forms.TextBox tbCelular;
        private System.Windows.Forms.TextBox tbApellido;
        private System.Windows.Forms.TextBox tbDireccion;
        private System.Windows.Forms.TextBox tbtelefono;
        private System.Windows.Forms.TextBox tbCedula;
        private System.Windows.Forms.TextBox tbNombre;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox cbResponsable;
        private System.Windows.Forms.ComboBox cbCategoria;
        private System.Windows.Forms.Button btCancelar;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Button btAceptar;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btEliminar;
        private System.Windows.Forms.Button btModificar;
        private System.Windows.Forms.Button btNuevo;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RadioButton rbResponsable;
        private System.Windows.Forms.RadioButton rbCategoria;
        private System.Windows.Forms.RadioButton rbNombres;
        private System.Windows.Forms.RadioButton rbCedula;
        private System.Windows.Forms.RadioButton rbApellido;
        private System.Windows.Forms.TabPage tbEventos;
        private System.Windows.Forms.TextBox tbEventosRestantes;
        private System.Windows.Forms.TextBox tbApellidoA;
        private System.Windows.Forms.TextBox tbEventosEjecutados;
        private System.Windows.Forms.TextBox tbEventosPactados;
        private System.Windows.Forms.TextBox tbNombreE;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.DataGridView dataGridEventos;

    }
}