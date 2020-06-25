namespace DataAccess
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int Id { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        public int ProductCategory_Id { get; set; }

        public double Price { get; set; }

        public int ProductBrand_Id { get; set; }

        public int Stock { get; set; }

        public virtual ProductCategory ProductCategory { get; set; }

        public virtual ProductoBrand ProductoBrand { get; set; }
    }
}
