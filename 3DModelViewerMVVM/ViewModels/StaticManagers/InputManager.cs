using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace _3DModelViewerMVVM.ViewModels.StaticManagers
{
    public static class MyInputManager
    {
        public static event Action<Key> KeyPressed;

        public static void OnKeyPRessed(Key key)
        {
            KeyPressed?.Invoke(key);
        }
    }
}
