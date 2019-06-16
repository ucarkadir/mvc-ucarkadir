using System;

namespace ucarkadir.Extensions
{
    public static class DatetimeExtensions
    {
        public static string ToDatetimeString(this DateTime Value)
        {
            return Value.ToString(DatabaseExtensions.CultureDefaultDateFormat); // yyyy-MM-dd hh:mm:ss - dd.MM.yyyy HH:mm:ss
        }
    }
}