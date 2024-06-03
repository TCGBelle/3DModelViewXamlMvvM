using _3DModelViewerMVVM.ViewModels;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace _3DModelViewerMVVM
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public ModelShowerViewModel _viewModel;

        public App()
        {
            _viewModel = new ModelShowerViewModel();
        }
        protected override void OnStartup(StartupEventArgs e)
        {
            MainWindow = new MainWindow()
            {
                DataContext = new MainViewModel(_viewModel)
            };
            MainWindow.Show();
            base.OnStartup(e);
        }
    }
}
