﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApplication2
{
    [ServiceContract]
    public interface ICalculator
    {

        [OperationContract]
        double Add(double a, double b);
    }
}
