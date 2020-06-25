using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using DTO;

namespace asp_net_mvc_crud.Models.Products
{
    public class ProductRegistrationVM
    {
        [DisplayName("Products name")]
        [DataType(DataType.Text)]
        [Required(ErrorMessage = "Please enter name"), MaxLength(30)]
        public string Name { get; set; }

        [DisplayName("Products price")]
        [DataType(DataType.Currency)]
        [Required(ErrorMessage = "Please enter price")]
        public double Price { get; set; }      
        
        [Required(ErrorMessage = "Please enter stock")]
        [Range(0, int.MaxValue, ErrorMessage = "The field {0} must be greater than {1}.")]
        [DisplayName("Products current stock")]
        public int Stock { get; set; }        

        [DisplayName("Products Brand")]
        [DataType(DataType.Text)]
        public int ProductBrand_Id { get; set; }

        [DisplayName("Products category")]
        [DataType(DataType.Text)]
        public int ProductCategory_Id { get; set; }

        [DisplayName("Available Brands")]
        public List<ProductBrandDTO> AvailableBrands { get; set; }
        [DisplayName("Available Categories")]
        public List<ProductCategoryDTO> AvailableCategories { get; set; }

        public virtual ProductCategoryDTO ProductCategory { get; set; }
        public virtual ProductBrandDTO ProductoBrand { get; set; }
    }
}