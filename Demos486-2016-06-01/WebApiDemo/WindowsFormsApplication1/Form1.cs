using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Net.Http;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        async private void button1_Click(object sender, EventArgs e)
        {
            var client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:50237/");
            var response = await client.PostAsJsonAsync<Muppet>("api/values", new Muppet
                {
                    Name = "Kermit", Age  =65
                });

            this.Text = "Status Code: " + response.StatusCode;

            var muppets = await response.Content.ReadAsAsync<Muppet>();
            MessageBox.Show(muppets.Name + " is now " + muppets.Age);
        }
    }

    class Muppet
    {
        public string Name { get; set; }
        public int Age { get; set; }
    }
}
