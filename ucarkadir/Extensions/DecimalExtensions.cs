using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ucarkadir.Extensions
{
    public static class DecimalExtensions
    {
        public static string ToDecimalString(this decimal Value)
        {
            return Value.ToString("0.00").Replace(",", ".");
        }
    }
}