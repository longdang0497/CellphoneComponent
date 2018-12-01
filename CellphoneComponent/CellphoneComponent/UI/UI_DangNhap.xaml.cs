using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace CellphoneComponent.UI
{
    /// <summary>
    /// Interaction logic for UI_DangNhap.xaml
    /// </summary>
    public partial class UI_DangNhap : Window
    {
        public UI_DangNhap()
        {
            InitializeComponent();
        }

        private void btnDangNhap_Click(object sender, RoutedEventArgs e)
        {
            UI_ManHinhChinh UI_ManHinhChinh = new UI_ManHinhChinh();
            UI_ManHinhChinh.Show();
            this.Close();
        }
    }
}
