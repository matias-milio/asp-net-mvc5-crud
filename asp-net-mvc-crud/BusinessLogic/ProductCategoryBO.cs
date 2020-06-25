using System.Collections.Generic;
using AutoMapper;
using BusinessLogic.Helpers;
using DataAccess;
using DTO;

namespace BusinessLogic
{
    public class ProductCategoryBO : BaseBoClass<ProductCategory>, Interfaces.IProductCategoriesBO
    {
        public ProductCategoryBO() =>
            cacheKey = CacheConfiguration.Settings.ProductsBrandsKey;

        public List<ProductCategoryDTO> GetAll()
        {            
            var queryResult = CacheHelper.GetOrSet(cacheKey, () => repository.Get());
            return Mapper.Map<List<ProductCategoryDTO>>(queryResult);
        }

        public ProductCategoryDTO GetById(int id)
        {            
            var queryResult = repository.GetByID(id);
            return Mapper.Map<ProductCategoryDTO>(queryResult);
        }
    }
}
