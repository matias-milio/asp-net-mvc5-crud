using System;
using System.Collections.Generic;
using System.Web.Mvc;
using AutoMapper;
using BusinessLogic.Interfaces;
using DTO;
using asp_net_mvc_crud.Models.Products;

namespace asp_net_mvc_crud.Controllers
{
    public class ProductsController : CustomController<ProductsController>
    {
        private readonly IProductBO productsBO;
        private readonly IProductBrandsBO productsBrandsBO;
        private readonly IProductCategoriesBO productsCategoriesBO;        

        public ProductsController(IProductBO _productBo,
                                  IProductBrandsBO _productsBrandsBO,
                                  IProductCategoriesBO _productsCategoriesBO)
        {
            productsBO = _productBo;
            productsBrandsBO = _productsBrandsBO;
            productsCategoriesBO = _productsCategoriesBO;
        }
        
        public ActionResult Index()
        {
            List<ProductOverviewVM> productsOverview = new List<ProductOverviewVM>();
            Log.Info("Getting products");
            try
            {
                var products = productsBO.GetAll();                
                productsOverview = Mapper.Map<List<ProductOverviewVM>>(products);
            }
            catch (Exception ex)
            {
                Log.Error("Error while getting products", ex);
                return View("Error");
            }            
            return View(productsOverview);
        }
       
        public ActionResult Details(int id)
        {
            ProductDetailsVM productDetails = new ProductDetailsVM();
            Log.Info("Getting details for product " + id.ToString());
            try
            {
                var product = productsBO.GetById(id);  
                productDetails = Mapper.Map<ProductDetailsVM>(product);
                productDetails.ProductBrand = product.ProductoBrand.Description;
                productDetails.ProductCategory = product.ProductCategory.Description;
            }
            catch (Exception ex)
            { 
                Log.Error("Error while getting details for product " + id.ToString(), ex);
                return View("Error");
            }
            return View(productDetails);
        }
                
        public ActionResult Create()
        {
            ProductRegistrationVM productRegistrationVM = new ProductRegistrationVM
            {
                AvailableBrands = productsBrandsBO.GetAll(),
                AvailableCategories = productsCategoriesBO.GetAll()
            };

            return View(productRegistrationVM);
        }
        
        [HttpPost]
        public ActionResult Create(ProductRegistrationVM registerProduct)
        {
            Log.Info("Attempting to register product " + registerProduct.Name);
            try
            {                
                var registerProductDTO = Mapper.Map<ProductDTO>(registerProduct);
                productsBO.Create(registerProductDTO);
                return RedirectToAction("Index");
            }
            catch(Exception ex)
            {
                Log.Error("Error while adding product " + registerProduct.Name, ex);
                return View("Error");
            }
        }
                
        public ActionResult Edit(int id)
        {
            ProductEditVM productDetails = new ProductEditVM();
            Log.Info("Getting details for edit product " + id.ToString());
            try
            {
                var product = productsBO.GetById(id); 
                productDetails = Mapper.Map<ProductEditVM>(product);
            }
            catch (Exception ex)
            {
                Log.Error("Error while getting details for product " + id.ToString(), ex);
                return View("Error");
            }
            return View(productDetails);
        }
        
        [HttpPost]
        public ActionResult Edit(int id, ProductEditVM editedProduct)
        {
            Log.Info("Attempting to update product " + editedProduct.Name);
            try
            {
                var entity = productsBO.GetById(editedProduct.Id);
                entity.Name = editedProduct.Name;
                entity.Price = editedProduct.Price;
                entity.Stock = editedProduct.Stock;
                return RedirectToAction("Index");
            }
            catch (Exception ex)
             {
                Log.Error("Error while updating product " + editedProduct.Name, ex);
                return View("Error");
            }
        }
        
        public ActionResult Delete(int id)
        {   
            return View();
        }
        
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            Log.Info("Deleting product " + id.ToString());
            try
            {
                productsBO.Delete(id);
                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                Log.Error("Error while deleting product " + id.ToString(), ex);
                return View("Error");
            }
        }
    }
}
