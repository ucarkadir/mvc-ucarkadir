using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ucarkadir.Extensions
{
    public static class DatabaseExtensions
    {
        public static string CultureDefaultDateFormat = "dd.MM.yyyy HH:mm:sszzz";   // Turkish Format:      dd.MM.yyyy HH:mm:ss
        public static string SetDateFormatSQL = "set dateformat dmy;";

        public static short ToInt16(this object value)
        {
            return Convert.ToInt16(value);
        }
        public static int ToInt32(this object value)
        {
            return Convert.ToInt32(value);
        }
        public static long ToInt64(this object value)
        {
            return Convert.ToInt64(value);
        }
        public static decimal ToDecimal(this object value)
        {
            return Convert.ToDecimal(value);
        }
        public static DateTime ToDateTime(this string value)
        {
            return Convert.ToDateTime(value);
        }
        public static Boolean ToBoolean(this object value)
        {
            return Convert.ToBoolean(value);
        }

        public static short ToInt16NULL(this object value)
        {
            if (value == DBNull.Value)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt16(value);
            }

        }

        public static int ToInt32NULL(this object value)
        {
            if (value == DBNull.Value)
            {
                return 0;
            }
            else
            {
                return Convert.ToInt32(value);
            }

        }

        public static string ToStringNULL(this object value)
        {

            if (value == DBNull.Value || value == null)
            {
                return "";
            }
            else
            {
                return Convert.ToString(value);
            }

        }

        public static string ToStringNULL2(this object value, string data)
        {

            if (value == DBNull.Value || value == null)
            {
                return data ?? "";
            }
            else
            {
                return Convert.ToString(value);
            }

        }

        public static DateTime ToDateTimeNULL(this object value)
        {
            if (value == DBNull.Value || value == null || value.ToString() == "1.01.0001 00:00:00")
            {
                return Convert.ToDateTime("2000-01-01");
            }
            else
            {
                return Convert.ToDateTime(value);
            }

        }

        public static bool ToBooleanNULL(this object value)
        {
            if (value == DBNull.Value)
            {
                return false;
            }
            else
            {
                return Convert.ToBoolean(value);
            }

        }

        public static decimal ToDecimalNULL(this object value)
        {
            if (value == DBNull.Value)
            {
                return 0;
            }
            else
            {
                return Convert.ToDecimal(value);
            }

        }

        public static byte[] ToByteNULL(this object value)
        {
            if (value == DBNull.Value)
            {
                return new byte[] { };
            }
            else
            {
                return (byte[])value;
            }

        }

        //public static object ToDateTimeGetNULL(this object value)
        //{
        //    if (value == "1.1.0001")
        //    {
        //        return DBNull.Value;
        //    }
        //    else
        //    {
        //        return Convert.ToDateTime(value);
        //    }

        //}

        public static string ToStringCult(this DateTime value)
        {
            return value.ToString(DatabaseExtensions.CultureDefaultDateFormat);
        }
    }
}