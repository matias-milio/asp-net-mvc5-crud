using AutoMapper;
using DataAccess;
using DataAccess.Implementations;

namespace BusinessLogic
{
    /// <summary>
    /// Base class for BO that uses database services
    /// </summary>
    /// <typeparam name="TEntity">Database entity related</typeparam>    
    public class BaseBoClass <TEntity> where TEntity : class
    {
        protected  private BaseRepository<TEntity> repository;
        protected  private IMapper mapper;
        protected  private string cacheKey;

        public BaseBoClass()
        {
            repository = new BaseRepository<TEntity>(new MyStoreDbEntities());            
        }
    }
}
