using System;
using System.Runtime.Caching;

namespace BusinessLogic.Helpers
{  

    public class CacheHelper 
    {        
        /// <summary>
        /// Gets or sets the cached entity
        /// </summary>
        /// <typeparam name="T">Entity type</typeparam>
        /// <param name="cacheKey">Cache Key string</param>
        /// <param name="getItemCallback">Delegate of the callback function</param>
        /// <returns></returns>
        public static T GetOrSet<T>(string cacheKey, Func<T> getItemCallback) where T : class
        {
            T item = MemoryCache.Default.Get(cacheKey) as T;
            if (item == null)
            {
                int cacheDuration = CacheConfiguration.Settings.CacheDuration;
                item = getItemCallback();
                MemoryCache.Default.Add(cacheKey, item, DateTime.Now.AddMinutes(cacheDuration));
            }
            return item;
        }

        /// <summary>
        /// Forces the cache to update
        /// </summary>
        /// <typeparam name="T">Entity type</typeparam>
        /// <param name="cacheKey">Cache Key string</param>
        /// <param name="getItemCallback">Delegate of the callback function</param>
        public static void UpdateCache<T>(string cacheKey, Func<T> getItemCallback) where T: class
        {
            int cacheDuration = CacheConfiguration.Settings.CacheDuration;
            var item = getItemCallback();
            MemoryCache.Default.Set(cacheKey, item, DateTime.Now.AddMinutes(cacheDuration));
        }
    }
}
