using DTO;
using asp_net_mvc_crud.Models.Products;

namespace asp_net_mvc_crud.MappingProfiles
{
    public class ModelMappingProfile : AutoMapper.Profile
    {
        public ModelMappingProfile()
        {
            CreateMap<ProductDTO, ProductOverviewVM>();
            CreateMap<ProductDTO, ProductDetailsVM>();
            CreateMap<ProductRegistrationVM, ProductDTO>();
            CreateMap<ProductEditVM, ProductDTO>();
            
        }
    }
}