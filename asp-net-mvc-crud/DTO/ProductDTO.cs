namespace DTO
{
    public class ProductDTO
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ProductCategory_Id { get; set; }
        public double Price { get; set; }
        public int ProductBrand_Id { get; set; }
        public int Stock { get; set; }
        
        public virtual ProductCategoryDTO ProductCategory { get; set; }
        public virtual ProductBrandDTO ProductoBrand { get; set; }
    }
}
