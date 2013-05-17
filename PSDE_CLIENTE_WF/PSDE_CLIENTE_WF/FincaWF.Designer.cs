namespace PSDE_CLIENTE_WF
{
    partial class FincaWF
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
            this.btEliminar = new System.Windows.Forms.Button();
            this.btModificar = new System.Windows.Forms.Button();
            this.btNuevo = new System.Windows.Forms.Button();
            this.tbEdicion = new System.Windows.Forms.TabPage();
            this.btCancelar = new System.Windows.Forms.Button();
            this.btAceptar = new System.Windows.Forms.Button();
            this.cbCodCliente = new System.Windows.Forms.ComboBox();
            this.tbCoordenada_Y_GMS = new System.Windows.Forms.TextBox();
            this.tbCoordenada_X_GMS = new System.Windows.Forms.TextBox();
            this.tbCoordenada_Y_UTM = new System.Windows.Forms.TextBox();
            this.tbCoordenada_X_UTM = new System.Windows.Forms.TextBox();
            this.tbUsoActualSuelo = new System.Windows.Forms.TextBox();
            this.tbHaEfectiva = new System.Windows.Forms.TextBox();
            this.tbHaTotalFinca = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tbClientes = new System.Windows.Forms.TabPage();
            this.label9 = new System.Windows.Forms.Label();
            this.tbBuscar = new System.Windows.Forms.TextBox();
            this.dataGridFincas = new System.Windows.Forms.DataGridView();
            this.tbFinca = new Dotnetrix.Controls.TabControl();
            this.tbEdicion.SuspendLayout();
            this.tbClientes.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridFincas)).BeginInit();
            this.tbFinca.SuspendLayout();
            this.SuspendLayout();
            // 
            // btEliminar
            // 
            this.btEliminar.Location = new System.Drawing.Point(920, 81);
            this.btEliminar.Name = "btEliminar";
            this.btEliminar.Size = new System.Drawing.Size(75, 23);
            this.btEliminar.TabIndex = 19;
            this.btEliminar.Text = "Eliminar";
            this.btEliminar.UseVisualStyleBackColor = true;
            this.btEliminar.Click += new System.EventHandler(this.btEliminar_Click);
            // 
            // btModificar
            // 
            this.btModificar.Location = new System.Drawing.Point(920, 52);
            this.btModificar.Name = "btModificar";
            this.btModificar.Size = new System.Drawing.Size(75, 23);
            this.btModificar.TabIndex = 18;
            this.btModificar.Text = "Modificar";
            this.btModificar.UseVisualStyleBackColor = true;
            this.btModificar.Click += new System.EventHandler(this.btModificar_Click);
            // 
            // btNuevo
            // 
            this.btNuevo.Location = new System.Drawing.Point(920, 23);
            this.btNuevo.Name = "btNuevo";
            this.btNuevo.Size = new System.Drawing.Size(75, 23);
            this.btNuevo.TabIndex = 17;
            this.btNuevo.Text = "Nuevo*";
            this.btNuevo.UseVisualStyleBackColor = true;
            this.btNuevo.Click += new System.EventHandler(this.btNuevo_Click);
            // 
            // tbEdicion
            // 
            this.tbEdicion.Controls.Add(this.btCancelar);
            this.tbEdicion.Controls.Add(this.btAceptar);
            this.tbEdicion.Controls.Add(this.cbCodCliente);
            this.tbEdicion.Controls.Add(this.tbCoordenada_Y_GMS);
            this.tbEdicion.Controls.Add(this.tbCoordenada_X_GMS);
            this.tbEdicion.Controls.Add(this.tbCoordenada_Y_UTM);
            this.tbEdicion.Controls.Add(this.tbCoordenada_X_UTM);
            this.tbEdicion.Controls.Add(this.tbUsoActualSuelo);
            this.tbEdicion.Controls.Add(this.tbHaEfectiva);
            this.tbEdicion.Controls.Add(this.tbHaTotalFinca);
            this.tbEdicion.Controls.Add(this.label8);
            this.tbEdicion.Controls.Add(this.label7);
            this.tbEdicion.Controls.Add(this.label6);
            this.tbEdicion.Controls.Add(this.label5);
            this.tbEdicion.Controls.Add(this.label4);
            this.tbEdicion.Controls.Add(this.label3);
            this.tbEdicion.Controls.Add(this.label2);
            this.tbEdicion.Controls.Add(this.label1);
            this.tbEdicion.Location = new System.Drawing.Point(4, 23);
            this.tbEdicion.Name = "tbEdicion";
            this.tbEdicion.Padding = new System.Windows.Forms.Padding(3);
            this.tbEdicion.Size = new System.Drawing.Size(904, 295);
            this.tbEdicion.TabIndex = 1;
            this.tbEdicion.Text = "Edicion";
            this.tbEdicion.UseVisualStyleBackColor = true;
            this.tbEdicion.Enter += new System.EventHandler(this.tbEdicion_Enter);
            // 
            // btCancelar
            // 
            this.btCancelar.Location = new System.Drawing.Point(132, 232);
            this.btCancelar.Name = "btCancelar";
            this.btCancelar.Size = new System.Drawing.Size(75, 23);
            this.btCancelar.TabIndex = 34;
            this.btCancelar.Text = "Cancelar";
            this.btCancelar.UseVisualStyleBackColor = true;
            this.btCancelar.Click += new System.EventHandler(this.btCancelar_Click);
            // 
            // btAceptar
            // 
            this.btAceptar.Location = new System.Drawing.Point(51, 232);
            this.btAceptar.Name = "btAceptar";
            this.btAceptar.Size = new System.Drawing.Size(75, 23);
            this.btAceptar.TabIndex = 33;
            this.btAceptar.Text = "Aceptar";
            this.btAceptar.UseVisualStyleBackColor = true;
            this.btAceptar.Click += new System.EventHandler(this.btAceptar_Click);
            // 
            // cbCodCliente
            // 
            this.cbCodCliente.FormattingEnabled = true;
            this.cbCodCliente.Location = new System.Drawing.Point(141, 14);
            this.cbCodCliente.Name = "cbCodCliente";
            this.cbCodCliente.Size = new System.Drawing.Size(161, 21);
            this.cbCodCliente.TabIndex = 32;
            // 
            // tbCoordenada_Y_GMS
            // 
            this.tbCoordenada_Y_GMS.Location = new System.Drawing.Point(141, 196);
            this.tbCoordenada_Y_GMS.Name = "tbCoordenada_Y_GMS";
            this.tbCoordenada_Y_GMS.Size = new System.Drawing.Size(161, 20);
            this.tbCoordenada_Y_GMS.TabIndex = 31;
            // 
            // tbCoordenada_X_GMS
            // 
            this.tbCoordenada_X_GMS.Location = new System.Drawing.Point(141, 170);
            this.tbCoordenada_X_GMS.Name = "tbCoordenada_X_GMS";
            this.tbCoordenada_X_GMS.Size = new System.Drawing.Size(161, 20);
            this.tbCoordenada_X_GMS.TabIndex = 30;
            // 
            // tbCoordenada_Y_UTM
            // 
            this.tbCoordenada_Y_UTM.Location = new System.Drawing.Point(141, 144);
            this.tbCoordenada_Y_UTM.Name = "tbCoordenada_Y_UTM";
            this.tbCoordenada_Y_UTM.Size = new System.Drawing.Size(161, 20);
            this.tbCoordenada_Y_UTM.TabIndex = 29;
            // 
            // tbCoordenada_X_UTM
            // 
            this.tbCoordenada_X_UTM.Location = new System.Drawing.Point(141, 118);
            this.tbCoordenada_X_UTM.Name = "tbCoordenada_X_UTM";
            this.tbCoordenada_X_UTM.Size = new System.Drawing.Size(161, 20);
            this.tbCoordenada_X_UTM.TabIndex = 28;
            // 
            // tbUsoActualSuelo
            // 
            this.tbUsoActualSuelo.Location = new System.Drawing.Point(141, 92);
            this.tbUsoActualSuelo.Name = "tbUsoActualSuelo";
            this.tbUsoActualSuelo.Size = new System.Drawing.Size(161, 20);
            this.tbUsoActualSuelo.TabIndex = 27;
            this.tbUsoActualSuelo.Enter += new System.EventHandler(this.tbUsoActualSuelo_Enter);
            this.tbUsoActualSuelo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbUsoActualSuelo_KeyPress);
            // 
            // tbHaEfectiva
            // 
            this.tbHaEfectiva.Location = new System.Drawing.Point(141, 66);
            this.tbHaEfectiva.Name = "tbHaEfectiva";
            this.tbHaEfectiva.Size = new System.Drawing.Size(161, 20);
            this.tbHaEfectiva.TabIndex = 26;
            this.tbHaEfectiva.Enter += new System.EventHandler(this.tbHaEfectiva_Enter);
            this.tbHaEfectiva.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbHaEfectiva_KeyPress);
            // 
            // tbHaTotalFinca
            // 
            this.tbHaTotalFinca.Location = new System.Drawing.Point(141, 40);
            this.tbHaTotalFinca.Name = "tbHaTotalFinca";
            this.tbHaTotalFinca.Size = new System.Drawing.Size(161, 20);
            this.tbHaTotalFinca.TabIndex = 25;
            this.tbHaTotalFinca.Enter += new System.EventHandler(this.tbHaTotalFinca_Enter);
            this.tbHaTotalFinca.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.tbHaTotalFinca_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(10, 173);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(102, 13);
            this.label8.TabIndex = 24;
            this.label8.Text = "Coordenada X GMS";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(10, 199);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(102, 13);
            this.label7.TabIndex = 23;
            this.label7.Text = "Coordenada Y GMS";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(10, 147);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(102, 13);
            this.label6.TabIndex = 22;
            this.label6.Text = "Coordenada Y UTM";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 121);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(102, 13);
            this.label5.TabIndex = 21;
            this.label5.Text = "Coordenada X UTM";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 17);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(39, 13);
            this.label4.TabIndex = 20;
            this.label4.Text = "Cliente";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 95);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(89, 13);
            this.label3.TabIndex = 19;
            this.label3.Text = "Uso Actual Suelo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 18;
            this.label2.Text = "HA Efectiva";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 43);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(120, 13);
            this.label1.TabIndex = 17;
            this.label1.Text = "Total de HA de La finca";
            // 
            // tbClientes
            // 
            this.tbClientes.Controls.Add(this.label9);
            this.tbClientes.Controls.Add(this.tbBuscar);
            this.tbClientes.Controls.Add(this.dataGridFincas);
            this.tbClientes.Location = new System.Drawing.Point(4, 23);
            this.tbClientes.Name = "tbClientes";
            this.tbClientes.Padding = new System.Windows.Forms.Padding(3);
            this.tbClientes.Size = new System.Drawing.Size(904, 295);
            this.tbClientes.TabIndex = 0;
            this.tbClientes.Text = "Finca";
            this.tbClientes.UseVisualStyleBackColor = true;
            this.tbClientes.Enter += new System.EventHandler(this.tbClientes_Enter);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(6, 9);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(93, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Buscar por Cliente";
            // 
            // tbBuscar
            // 
            this.tbBuscar.Location = new System.Drawing.Point(102, 6);
            this.tbBuscar.Name = "tbBuscar";
            this.tbBuscar.Size = new System.Drawing.Size(147, 20);
            this.tbBuscar.TabIndex = 1;
            this.tbBuscar.TextChanged += new System.EventHandler(this.tbBuscar_TextChanged);
            // 
            // dataGridFincas
            // 
            this.dataGridFincas.AllowUserToAddRows = false;
            this.dataGridFincas.AllowUserToDeleteRows = false;
            this.dataGridFincas.AllowUserToOrderColumns = true;
            this.dataGridFincas.AllowUserToResizeColumns = false;
            this.dataGridFincas.AllowUserToResizeRows = false;
            this.dataGridFincas.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dataGridFincas.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.dataGridFincas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridFincas.Location = new System.Drawing.Point(6, 32);
            this.dataGridFincas.Name = "dataGridFincas";
            this.dataGridFincas.Size = new System.Drawing.Size(892, 261);
            this.dataGridFincas.TabIndex = 0;
            // 
            // tbFinca
            // 
            this.tbFinca.Controls.Add(this.tbClientes);
            this.tbFinca.Controls.Add(this.tbEdicion);
            this.tbFinca.Location = new System.Drawing.Point(2, 1);
            this.tbFinca.Name = "tbFinca";
            this.tbFinca.SelectedIndex = 0;
            this.tbFinca.Size = new System.Drawing.Size(912, 322);
            this.tbFinca.TabIndex = 20;
            // 
            // FincaWF
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1006, 330);
            this.Controls.Add(this.tbFinca);
            this.Controls.Add(this.btEliminar);
            this.Controls.Add(this.btModificar);
            this.Controls.Add(this.btNuevo);
            this.Name = "FincaWF";
            this.Text = "Finca";
            this.tbEdicion.ResumeLayout(false);
            this.tbEdicion.PerformLayout();
            this.tbClientes.ResumeLayout(false);
            this.tbClientes.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridFincas)).EndInit();
            this.tbFinca.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btEliminar;
        private System.Windows.Forms.Button btModificar;
        private System.Windows.Forms.Button btNuevo;
        private System.Windows.Forms.TabPage tbEdicion;
        private System.Windows.Forms.ComboBox cbCodCliente;
        private System.Windows.Forms.TextBox tbCoordenada_Y_GMS;
        private System.Windows.Forms.TextBox tbCoordenada_X_GMS;
        private System.Windows.Forms.TextBox tbCoordenada_Y_UTM;
        private System.Windows.Forms.TextBox tbCoordenada_X_UTM;
        private System.Windows.Forms.TextBox tbUsoActualSuelo;
        private System.Windows.Forms.TextBox tbHaEfectiva;
        private System.Windows.Forms.TextBox tbHaTotalFinca;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tbClientes;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox tbBuscar;
        private System.Windows.Forms.DataGridView dataGridFincas;
        private Dotnetrix.Controls.TabControl tbFinca;
        private System.Windows.Forms.Button btCancelar;
        private System.Windows.Forms.Button btAceptar;
    }
}