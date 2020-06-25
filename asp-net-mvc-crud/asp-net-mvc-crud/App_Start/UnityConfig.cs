using System.Web.Mvc;
using Unity;
using Unity.Mvc5;
using BusinessLogic;
using BusinessLogic.Interfaces;

namespace asp_net_mvc_crud
{
    public static class UnityConfig
    {
        public static void RegisterComponents()
        {
			var container = new UnityContainer();

            #region Dependencies
            container.RegisterType<IProductBO, ProductBO>();
            container.RegisterType<IProductBrandsBO, ProductBrandBO>();
            container.RegisterType<IProductCategoriesBO, ProductCategoryBO>();
            #endregion

            DependencyResolver.SetResolver(new UnityDependencyResolver(container));
        }
    }
}