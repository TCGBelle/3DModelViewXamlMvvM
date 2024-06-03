using _3DModelViewerMVVM.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _3DModelViewerMVVM.Stores
{
    public class NavigationStore
    {
        private ViewModelBase _viewModel;
        public ViewModelBase CurrentViewModel
        { 
            get => _viewModel;
            set
            { 
                _viewModel = value; 
            }
                
        }
    }
}
