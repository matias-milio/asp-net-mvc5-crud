using DTO;
using DataAccess;

namespace asp_net_mvc_crud.MappingProfiles
{
    public class BussinesMappingProfile : AutoMapper.Profile
    {
        public BussinesMappingProfile()
        {
            CreateMap<Product, ProductDTO>();
            CreateMap<ProductDTO, Product>();
            CreateMap<ProductCategory, ProductCategoryDTO>();
            CreateMap<ProductoBrand, ProductBrandDTO>();            
        }
    }
}