using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ucarkadir.Extensions
{
    public static class StringExtensions
    {
        public static string IsNullReturn(this string Value, string ReturnValue)
        {
            if (Value == null) return ReturnValue;
            else return Value;
        }

        public static bool CheckStringIsNumber(string Value)
        {
            int num;
            return ((int.TryParse(Value, out num)) && (Value.All(char.IsDigit)));
        }
    }
}