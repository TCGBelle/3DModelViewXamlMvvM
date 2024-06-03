using _3DModelViewerMVVM.Models;
using _3DModelViewerMVVM.ViewModels.Commands;
using _3DModelViewerMVVM.ViewModels.StaticManagers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Media3D;

namespace _3DModelViewerMVVM.ViewModels
{
    public class ModelShowerViewModel : ViewModelBase
    {
        private double _xAxisAngle; //0-360
        private double _yAxisAngle; //0-360
        private double _zAxisAngle; //0-360
        private double _modelScale; //0.1 to 2
        private double _xLightLookDirection; //-1 to +1
        private double _yLightLookDirection; //-1 to +1
        private Vector3D _lightDirection;
        private Transform3DGroup _transformGroup;
        public Transform3DGroup TransformGroup 
        {  get { return _transformGroup; }
            set 
            { 
                if (_transformGroup != value)
                {
                    _transformGroup = value;
                    OnPropertyChanged(nameof(TransformGroup));
                }
            }
        }
        public double XAxisAngle
        {
            get { return _xAxisAngle; }
            set 
            { 
                _xAxisAngle = value; 
                OnPropertyChanged(nameof(XAxisAngle));
                UpdateTransform();
            }
        }
        public double YAxisAngle
        {
            get { return _yAxisAngle; }
            set
            {
                _yAxisAngle = value;
                OnPropertyChanged(nameof(YAxisAngle));
                UpdateTransform();
            }
        }
        public double ZAxisAngle
        {
            get { return _zAxisAngle; }
            set
            {
                _zAxisAngle = value;
                OnPropertyChanged(nameof(ZAxisAngle));
                UpdateTransform();
            }
        }
        public double XLightLookDirection
        {
            get { return _xLightLookDirection; }
            set 
            { 
                _xLightLookDirection = value;
                OnPropertyChanged(nameof(XLightLookDirection));
                UpdateLightDirection();
            }
        }
        public double YLightLookDirection
        {
            get { return _yLightLookDirection; }
            set
            {
                _yLightLookDirection = value;
                OnPropertyChanged(nameof(YLightLookDirection));
                UpdateLightDirection();
            }
        }
        public double ModelScale 
        {
            get { return _modelScale; }
            set
            {
                _modelScale = value;
                OnPropertyChanged(nameof(ModelScale));
                UpdateTransform();
            }
        }


        public Vector3D LightDirection
        {
            get { return _lightDirection; }
            set 
            {
                _lightDirection = value;
                OnPropertyChanged(nameof(LightDirection));
            }
        }
        public ICommand RotateLeft { get; }
        public ICommand RotateRight { get; }
        public ModelShowerViewModel()
        {
            _xAxisAngle = 0;
            _yAxisAngle = 0;
            _zAxisAngle = 0;
            _xLightLookDirection = 0.0;
            _yLightLookDirection = 0.0;
            _modelScale = 1.0;
            _transformGroup = new Transform3DGroup();
            UpdateLightDirection();
            UpdateTransform();
            RotateLeft = new RelayCommandBase(execute => IncreaseYAxis(), canExecute => YAxisAngle < 360);
            RotateRight = new RelayCommandBase(execute => DecreaseYAxis(), canExecute => YAxisAngle > 0);
            MyInputManager.KeyPressed += OnKeyPressed;
        }

        private void UpdateLightDirection()
        {
            LightDirection = new Vector3D(_xLightLookDirection, _yLightLookDirection, -1.0f);
            OnPropertyChanged(nameof(LightDirection));
        }

        private void IncreaseYAxis()
        {
            if (YAxisAngle <= 360)
            {
                YAxisAngle++;
            }
            else
            {
                YAxisAngle = 360;
            }
        }
        private void DecreaseYAxis()
        {
            if (YAxisAngle >= 0)
            {
                YAxisAngle--;
            }
            else
            {
                YAxisAngle = 0;
            }
        }

        private void UpdateTransform()
        {
            TransformGroup = new Transform3DGroup
            {
                Children = new Transform3DCollection
                {
                    new ScaleTransform3D(ModelScale, ModelScale, ModelScale),
                    new RotateTransform3D(new AxisAngleRotation3D(new Vector3D(1,0,0), XAxisAngle)),
                    new RotateTransform3D(new AxisAngleRotation3D(new Vector3D(0,1,0), YAxisAngle)),
                    new RotateTransform3D(new AxisAngleRotation3D(new Vector3D(0,0,1), ZAxisAngle))
                }
            };
        }

        private void OnKeyPressed(Key key)
        {
            switch (key) 
            {
                case Key.Left:
                    IncreaseYAxis();
                    break;
                case Key.Right:
                    DecreaseYAxis();
                    break;
            }
        }
    }
}
