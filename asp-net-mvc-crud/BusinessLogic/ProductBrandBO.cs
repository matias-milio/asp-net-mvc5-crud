using System.Collections.Generic;
using AutoMapper;
using BusinessLogic.Helpers;
using DataAccess;
using DTO;

namespace BusinessLogic
{
    public class ProductBrandBO : BaseBoClass<ProductoBrand>, Interfaces.IProductBrandsBO
    {
        public ProductBrandBO() =>
            cacheKey = CacheConfiguration.Settings.ProductsBrandsKey;

        public List<ProductBrandDTO> GetAll()
        {            
            var queryResult = CacheHelper.GetOrSet(cacheKey, () => repository.Get());
            return Mapper.Map<List<ProductBrandDTO>>(queryResult);
        }

        public ProductBrandDTO GetById(int id)
        {           
            var queryResult = repository.GetByID(id);
            return Mapper.Map<ProductBrandDTO>(queryResult);
        }

    }
}
