using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.ServiceModel;

namespace WindowsFormsApplication2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var address = new EndpointAddress("http://localhost:50068/Calc.svc");
            var binding = new BasicHttpBinding();

            var factory = new ChannelFactory<ICalculator>(binding, address);

            var proxy = factory.CreateChannel();

            MessageBox.Show("Answer is " + proxy.Add(4, 5));
        }
    }
}
