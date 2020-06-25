using System.ComponentModel;

namespace asp_net_mvc_crud.Models.Products
{
    public class ProductOverviewVM
    {        
        public int Id { get; set; }
        [DisplayName("Products name")]
        public string Name { get; set; }
        [DisplayName("Products price")]
        public double Price { get; set; }
        [DisplayName("Products current stock")]
        public int Stock { get; set; }

        public int CategoryId { get; set; }
        public int BrandId { get; set; }
    }
}