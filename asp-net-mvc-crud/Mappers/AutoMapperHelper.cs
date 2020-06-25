using AutoMapper;
using DTO;

namespace Mappers
{
    
    public static class AutoMapperHelper
    {
        /// <summary>
        /// Gets the proper mapping configuration for the passed type.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <returns></returns>
        public static IMapper GetMapper<T>()
        {
            if (typeof(T).FullName.Equals(typeof(ProductDTO).FullName))
            {
                var mapperConfig = new MapperConfiguration(cfg => cfg.CreateMap<DataAccess.Products, ProductDTO>());
                return mapperConfig.CreateMapper();
            }

            if (typeof(T).FullName.Equals(typeof(DataAccess.Products).FullName))
            {
                var mapperConfig = new MapperConfiguration(cfg => cfg.CreateMap<ProductDTO, DataAccess.Products>()
                                                        .ForMember(x => x.ProductCategories, opt => opt.Ignore())
                                                        .ForMember(x => x.ProductoBrands, opt => opt.Ignore()));
                return mapperConfig.CreateMapper();
            }

            if (typeof(T).FullName.Equals(typeof(ProductCategoriesDTO).FullName))
            {
                var mapperConfig = new MapperConfiguration(cfg => cfg.CreateMap<DataAccess.ProductCategories, ProductCategoriesDTO>());
                return mapperConfig.CreateMapper();
            }

            if (typeof(T).FullName.Equals(typeof(ProductoBrandsDTO).FullName))
            {
                var mapperConfig = new MapperConfiguration(cfg => cfg.CreateMap<DataAccess.ProductoBrands, ProductoBrandsDTO>());                
                return mapperConfig.CreateMapper();
            }

            return null;
        }
    }
}
