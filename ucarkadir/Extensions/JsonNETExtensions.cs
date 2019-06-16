using System;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace ucarkadir.Extensions
{
    public static class JsonNETExtensions
    {
        public static string SerializeObject(Object obj)
        {
            var settings = new JsonSerializerSettings()
            {// Json.Net Özellikler
                TypeNameHandling = TypeNameHandling.None,// (Inheritance) Kalıtım Değerlerinin eklemeliyi sağlar
                NullValueHandling = NullValueHandling.Ignore, // Null değeleri yok sayar
                MissingMemberHandling = MissingMemberHandling.Ignore // ? 
            };

            return JsonConvert.SerializeObject(obj, Formatting.None, settings);
            // new IsoDateTimeConverter() - tarih değiştirme için ayar
        }

        public static T DeserializeObject<T>(string jsonData)
        {
            return JsonConvert.DeserializeObject<T>(jsonData);
        }
    }
}