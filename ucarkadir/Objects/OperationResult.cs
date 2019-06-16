﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ucarkadir.Objects
{
    public class OperationResult<T>
    {
        public OperationResult()
        {
            IsSuccesful = true;
            Message = string.Empty;
            Data = default(T);
        }

        public bool IsSuccesful { get; set; }
        public string Message { get; set; }
        public T Data { get; set; }
    }
}