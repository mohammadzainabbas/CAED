using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net;
using System.Net.Sockets;

namespace Chat_Application
{
    
    public partial class Form1 : Form
    {
        string name_1, name_2;
        Socket socket;
        EndPoint ep_Local, ep_Remote;
        public Form1()
        {
            InitializeComponent();

            socket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            socket.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);

            textLocalIP.Text = GetLocalIPAddress();
            textFriendIP.Text = GetLocalIPAddress();

        }

        private string GetLocalIPAddress()
        {
            IPHostEntry host;
            host = Dns.GetHostEntry(Dns.GetHostName());

            foreach (IPAddress IP in host.AddressList)
            {
                if (IP.AddressFamily == AddressFamily.InterNetwork)
                {
                    return IP.ToString();
                }
            }
            return "127.0.0.1";
        }

        private void MessageCallBack(IAsyncResult aResult)
        {
            try 
            {
                int size = socket.EndReceiveFrom(aResult, ref ep_Remote);
                if (size > 0)
                {
                    byte[] receievedData = new byte[2464];

                    receievedData = (byte[])aResult.AsyncState;

                    ASCIIEncoding eEncoding = new ASCIIEncoding();
                    string receievedMessage = eEncoding.GetString(receievedData);

                    listMessage.Items.Add(name_2 + ": " + receievedMessage);

                }

                byte[] buffer = new byte[2500];

                socket.BeginReceiveFrom(buffer, 0, buffer.Length, SocketFlags.None, ref ep_Remote, new AsyncCallback(MessageCallBack), buffer);
            }
            catch (Exception exp)
            {
                MessageBox.Show(exp.ToString());
            }
        }

        private void button_Send_Click(object sender, EventArgs e)
        {
            try
            {
                System.Text.ASCIIEncoding encoding = new System.Text.ASCIIEncoding();
                byte[] message = new byte[2500];
                message = encoding.GetBytes(textMessage.Text);

                socket.Send(message);

                listMessage.Items.Add(name_1 + ": " + textMessage.Text);
                textMessage.Clear();

            }
            catch (Exception exp)
            {
                MessageBox.Show(exp.ToString());
            }
        }

        private void button_Start_Click(object sender, EventArgs e)
        {
            labelName_1.Visible = false;
            labelName_2.Visible = false;
            name_1 = textName_1.Text;
            name_2 = textName_2.Text;
            textName_1.Visible = false;
            textName_2.Visible = false;

            try
            {
                ep_Local = new IPEndPoint(IPAddress.Parse(textLocalIP.Text), Convert.ToInt32(textLocalPort.Text));
                socket.Bind(ep_Local);

                ep_Remote = new IPEndPoint(IPAddress.Parse(textFriendIP.Text), Convert.ToInt32(textFriendPort.Text));
                socket.Connect(ep_Remote);

                byte[] buffer = new byte[1500];

                socket.BeginReceiveFrom(buffer, 0, buffer.Length, SocketFlags.None, ref ep_Remote, new AsyncCallback(MessageCallBack), buffer);

                button_Start.Enabled = false;
                button_Start.Text = "Connected!!";

                button_Send.Enabled = true;
                textMessage.Focus();
            }
            catch (Exception exp)
            {
                MessageBox.Show(exp.ToString());
            }
        }
    }
}
