using System;
using System.Configuration;

namespace BusinessLogic.Helpers
{
    /// <summary>
    /// Encapsulates the cache configuration configured by the web.config
    /// </summary>
    public class CacheConfiguration : ConfigurationSection
    {
        /// <summary>
        /// Gets the values of the configured keys
        /// </summary>
        public static CacheConfiguration Settings { get; } = ConfigurationManager.GetSection("CacheConfiguration") as CacheConfiguration;

        [ConfigurationProperty("ProductsKey")]       
        public string ProductsKey
        {
            get { return this["ProductsKey"].ToString(); }
            set { this["ProductsKey"] = value; }
        }

        [ConfigurationProperty("ProductsBrandsKey")]
        public string ProductsBrandsKey
        {
            get { return this["ProductsBrandsKey"].ToString(); }
            set { this["ProductsBrandsKey"] = value; }
        }

        [ConfigurationProperty("ProductsCategoriesKey")]
        public string ProductsCategoriesKey
        {
            get { return this["ProductsCategoriesKey"].ToString(); }
            set { this["ProductsCategoriesKey"] = value; }
        }

        [ConfigurationProperty("CacheDuration")]
        public int CacheDuration
        {
            get { return Convert.ToInt32(this["CacheDuration"]); }
            set { this["CacheDuration"] = value; }
        }


    }
}
