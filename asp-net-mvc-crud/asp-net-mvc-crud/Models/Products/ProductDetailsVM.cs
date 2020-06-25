using System.ComponentModel;

namespace asp_net_mvc_crud.Models.Products
{
    public class ProductDetailsVM
    {
        public int Id { get; set; }
        [DisplayName("Products name")]
        public string Name { get; set; }
        [DisplayName("Products price")]
        public double Price { get; set; }
        [DisplayName("Products current stock")]
        public int Stock { get; set; }
        [DisplayName("Products Brand")]
        public string ProductBrand { get; set; }
        [DisplayName("Products category")]
        public string ProductCategory { get; set; }
    }
}