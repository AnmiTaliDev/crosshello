using System;
using System.Drawing;
using System.Windows.Forms;

public partial class HelloWorldForm : Form
{
    public HelloWorldForm()
    {
        InitializeComponent();
    }
    
    private void InitializeComponent()
    {
        this.Text = "Hello, World!";
        this.Size = new Size(300, 200);
        this.StartPosition = FormStartPosition.CenterScreen;
        
        Label label = new Label();
        label.Text = "Hello, World!";
        label.Font = new Font("Arial", 24);
        label.TextAlign = ContentAlignment.MiddleCenter;
        label.Dock = DockStyle.Fill;
        
        this.Controls.Add(label);
    }
}

class Program
{
    [STAThread]
    static void Main()
    {
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new HelloWorldForm());
    }
}