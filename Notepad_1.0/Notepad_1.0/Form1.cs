using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Notepad_1._0
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        private RichTextBox GetRichTextBox()
        {
            RichTextBox rt = null;
            TabPage tp = tabControl1.SelectedTab;
            if (tp != null)
            {
                rt = tp.Controls[0] as RichTextBox;
            }
            return rt;
        }
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close(); 

        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TabPage tp = new TabPage("New Document");
            RichTextBox rtb = new RichTextBox();
            rtb.Dock = DockStyle.Fill;
            tp.Controls.Add(rtb);
            tabControl1.TabPages.Add(tp);
        }

        private void cutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().Cut();
        }

        private void copyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().Copy();
        }

        private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().Paste();
        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Stream mystream;
            if (openFileDialog1.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                if ((mystream = openFileDialog1.OpenFile()) != null)
                {
                    string filename = openFileDialog1.FileName;
                    string readfiletext = File.ReadAllText(filename);
                    TabPage tp = new TabPage("New Document");
                    RichTextBox rt = new RichTextBox();
                    rt.Dock = DockStyle.Fill;
                    tp.Controls.Add(rt);
                    tabControl1.TabPages.Add(tp);
                    rt.Text = readfiletext;
                }
            }
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog savefile = new SaveFileDialog();
            savefile.Filter = "*.txt(textfile)|*.txt";
            RichTextBox rt = new RichTextBox();
            if (savefile.ShowDialog() == DialogResult.OK)
            {
                rt.SaveFile(savefile.FileName, RichTextBoxStreamType.PlainText);
            }
        }

        private void undoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().Undo();
        }

        private void selectAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().SelectAll();
        }

        private void timeDateToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //RichTextBox rb = new RichTextBox();
            //rb.Text = System.DateTime.Now.ToString();
                //(System.DateTime.Now.ToString());
            //richTextBox1.Text = System.DateTime.Now.ToString();
            richTextBox1.Text = DateTime.Now.ToString() + richTextBox1.Text;
        }

        private void aboutNotepad10ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("This product is licensed under the M Zain's User Terms to: M Zain Abbas");
        }

        private void getHelpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Process.Start("http://windows.microsoft.com/en-us/windows/notepad-faq");
        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GetRichTextBox().Clear();
        }

        private void findToolStripMenuItem_Click(object sender, EventArgs e)
        {

            GetRichTextBox().Find("zain");      //string which i want to find in text
        }
    }
}
