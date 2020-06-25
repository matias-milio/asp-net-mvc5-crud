namespace DataAccess
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyStoreDbEntities : DbContext
    {
        public MyStoreDbEntities()
            : base("name=MyStoreDbEntities1")
        {
        }

        public virtual DbSet<Product> Product { get; set; }
        public virtual DbSet<ProductCategory> ProductCategory { get; set; }
        public virtual DbSet<ProductoBrand> ProductoBrand { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>()
                .Property(e => e.Name)
                .IsUnicode(false);

            modelBuilder.Entity<ProductCategory>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductCategory>()
                .HasMany(e => e.Product)
                .WithRequired(e => e.ProductCategory)
                .HasForeignKey(e => e.ProductCategory_Id)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ProductoBrand>()
                .Property(e => e.Description)
                .IsUnicode(false);

            modelBuilder.Entity<ProductoBrand>()
                .HasMany(e => e.Product)
                .WithRequired(e => e.ProductoBrand)
                .HasForeignKey(e => e.ProductBrand_Id)
                .WillCascadeOnDelete(false);
        }
    }
}
