using DTO;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace asp_net_mvc_crud.Models.Products
{
    public class ProductEditVM
    {
        public int Id { get; set; }

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

        public virtual ProductCategoryDTO ProductCategory { get; set; }
        public virtual ProductBrandDTO ProductoBrand { get; set; }


    }
}