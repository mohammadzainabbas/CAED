namespace Chat_Application
{
    partial class Form1
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.textLocalPort = new System.Windows.Forms.TextBox();
            this.textLocalIP = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.textFriendPort = new System.Windows.Forms.TextBox();
            this.textFriendIP = new System.Windows.Forms.TextBox();
            this.button_Start = new System.Windows.Forms.Button();
            this.button_Send = new System.Windows.Forms.Button();
            this.listMessage = new System.Windows.Forms.ListBox();
            this.textMessage = new System.Windows.Forms.TextBox();
            this.textName_1 = new System.Windows.Forms.TextBox();
            this.textName_2 = new System.Windows.Forms.TextBox();
            this.labelName_1 = new System.Windows.Forms.Label();
            this.labelName_2 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.Transparent;
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.textLocalPort);
            this.groupBox1.Controls.Add(this.textLocalIP);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(22, 28);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(200, 100);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Person 1";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(10, 65);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Port No.";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(68, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "IP Address";
            // 
            // textLocalPort
            // 
            this.textLocalPort.Location = new System.Drawing.Point(84, 62);
            this.textLocalPort.Name = "textLocalPort";
            this.textLocalPort.Size = new System.Drawing.Size(100, 20);
            this.textLocalPort.TabIndex = 1;
            // 
            // textLocalIP
            // 
            this.textLocalIP.Location = new System.Drawing.Point(84, 24);
            this.textLocalIP.Name = "textLocalIP";
            this.textLocalIP.Size = new System.Drawing.Size(100, 20);
            this.textLocalIP.TabIndex = 0;
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.Transparent;
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.textFriendPort);
            this.groupBox2.Controls.Add(this.textFriendIP);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox2.Location = new System.Drawing.Point(249, 28);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(200, 100);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Person 2";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 65);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(54, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Port No.";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 27);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "IP Address";
            // 
            // textFriendPort
            // 
            this.textFriendPort.Location = new System.Drawing.Point(84, 62);
            this.textFriendPort.Name = "textFriendPort";
            this.textFriendPort.Size = new System.Drawing.Size(100, 20);
            this.textFriendPort.TabIndex = 1;
            // 
            // textFriendIP
            // 
            this.textFriendIP.Location = new System.Drawing.Point(84, 24);
            this.textFriendIP.Name = "textFriendIP";
            this.textFriendIP.Size = new System.Drawing.Size(100, 20);
            this.textFriendIP.TabIndex = 0;
            // 
            // button_Start
            // 
            this.button_Start.BackColor = System.Drawing.Color.Transparent;
            this.button_Start.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Start.Location = new System.Drawing.Point(466, 55);
            this.button_Start.Name = "button_Start";
            this.button_Start.Size = new System.Drawing.Size(92, 40);
            this.button_Start.TabIndex = 2;
            this.button_Start.Text = "Let\'s Start";
            this.button_Start.UseVisualStyleBackColor = false;
            this.button_Start.Click += new System.EventHandler(this.button_Start_Click);
            // 
            // button_Send
            // 
            this.button_Send.BackColor = System.Drawing.SystemColors.Control;
            this.button_Send.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button_Send.Location = new System.Drawing.Point(483, 332);
            this.button_Send.Name = "button_Send";
            this.button_Send.Size = new System.Drawing.Size(75, 23);
            this.button_Send.TabIndex = 3;
            this.button_Send.Text = "Send";
            this.button_Send.UseVisualStyleBackColor = false;
            this.button_Send.Click += new System.EventHandler(this.button_Send_Click);
            // 
            // listMessage
            // 
            this.listMessage.FormattingEnabled = true;
            this.listMessage.Location = new System.Drawing.Point(22, 220);
            this.listMessage.Name = "listMessage";
            this.listMessage.Size = new System.Drawing.Size(536, 108);
            this.listMessage.TabIndex = 4;
            // 
            // textMessage
            // 
            this.textMessage.Location = new System.Drawing.Point(22, 334);
            this.textMessage.Name = "textMessage";
            this.textMessage.Size = new System.Drawing.Size(455, 20);
            this.textMessage.TabIndex = 5;
            // 
            // textName_1
            // 
            this.textName_1.Location = new System.Drawing.Point(70, 169);
            this.textName_1.Name = "textName_1";
            this.textName_1.Size = new System.Drawing.Size(100, 20);
            this.textName_1.TabIndex = 6;
            // 
            // textName_2
            // 
            this.textName_2.Location = new System.Drawing.Point(227, 169);
            this.textName_2.Name = "textName_2";
            this.textName_2.Size = new System.Drawing.Size(100, 20);
            this.textName_2.TabIndex = 7;
            // 
            // labelName_1
            // 
            this.labelName_1.AutoSize = true;
            this.labelName_1.BackColor = System.Drawing.Color.Transparent;
            this.labelName_1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelName_1.Location = new System.Drawing.Point(67, 153);
            this.labelName_1.Name = "labelName_1";
            this.labelName_1.Size = new System.Drawing.Size(71, 13);
            this.labelName_1.TabIndex = 8;
            this.labelName_1.Text = "Your name:";
            // 
            // labelName_2
            // 
            this.labelName_2.AutoSize = true;
            this.labelName_2.BackColor = System.Drawing.Color.Transparent;
            this.labelName_2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelName_2.Location = new System.Drawing.Point(224, 153);
            this.labelName_2.Name = "labelName_2";
            this.labelName_2.Size = new System.Drawing.Size(93, 13);
            this.labelName_2.TabIndex = 9;
            this.labelName_2.Text = "Friend\'s name: ";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(587, 391);
            this.Controls.Add(this.labelName_2);
            this.Controls.Add(this.labelName_1);
            this.Controls.Add(this.textName_2);
            this.Controls.Add(this.textName_1);
            this.Controls.Add(this.textMessage);
            this.Controls.Add(this.listMessage);
            this.Controls.Add(this.button_Send);
            this.Controls.Add(this.button_Start);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Form1";
            this.Text = "Chat Application 1.0";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textLocalPort;
        private System.Windows.Forms.TextBox textLocalIP;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textFriendPort;
        private System.Windows.Forms.TextBox textFriendIP;
        private System.Windows.Forms.Button button_Start;
        private System.Windows.Forms.Button button_Send;
        private System.Windows.Forms.ListBox listMessage;
        private System.Windows.Forms.TextBox textMessage;
        private System.Windows.Forms.TextBox textName_1;
        private System.Windows.Forms.TextBox textName_2;
        private System.Windows.Forms.Label labelName_1;
        private System.Windows.Forms.Label labelName_2;
    }
}

