using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Notepad
{
   
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("The current file isn't save, Do you want to save it first ??", "File not saved !!", MessageBoxButtons.YesNoCancel);
            saveFileDialog1.ShowDialog();
            textBox1.Clear();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void undoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            textBox1.Undo();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            String text = textBox1.Text;

        }

        private void getHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Form form = new Form;
            form.Show();
        }

        private void copyToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            //Clipboard.SetDataObject(((TextBox)this.ActiveControl).SelectedText, true);
            Clipboard.SetText(this.Text);
        }

        private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Clipboard.GetText();
        }
    }
}
