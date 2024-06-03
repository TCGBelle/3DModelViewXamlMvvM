using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3DModelViewerMVVM.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        public ViewModelBase CurrentViewModel { get; }
        public MainViewModel(ViewModelBase currViewModel)
        {
            CurrentViewModel = currViewModel;
        }
    }
}
