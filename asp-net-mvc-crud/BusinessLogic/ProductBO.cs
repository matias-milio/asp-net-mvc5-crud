using System.Collections.Generic;
using AutoMapper;
using BusinessLogic.Helpers;
using DataAccess;
using DTO;
using System.Linq;

namespace BusinessLogic
{
    public class ProductBO : BaseBoClass<Product>, Interfaces.IProductBO
    {
        public ProductBO() =>     
            cacheKey = CacheConfiguration.Settings.ProductsKey;        

        public List<ProductDTO> GetAll()
        {   
            var queryResult = CacheHelper.GetOrSet(cacheKey, () => repository.Get());            
            return Mapper.Map<List<ProductDTO>>(queryResult);
        }

        public ProductDTO GetById(int id)
        {
            var queryResult = CacheHelper.GetOrSet(cacheKey, () => repository.Get())
                                         .Where(x => x.Id.Equals(id)).FirstOrDefault();       

                return Mapper.Map<ProductDTO>(queryResult);
        }

        public void Create(ProductDTO newProduct)
        {            
            var newProductEntity = Mapper.Map<Product>(newProduct);
            repository.Insert(newProductEntity);
            CacheHelper.UpdateCache(cacheKey, () => repository.Get());
        }

        public void Delete(int id)
        {           
            repository.Delete(id);
            CacheHelper.UpdateCache(cacheKey, () => repository.Get());
        }

        public void Update(int id, ProductDTO updatedDTOProduct)
        {
            var product = Mapper.Map<Product>(updatedDTOProduct);            
            repository.LazyUpdate(id,product);
            CacheHelper.UpdateCache(cacheKey, () => repository.Get());
        }
    }
}
