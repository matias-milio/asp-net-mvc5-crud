using System.Web.Mvc;
using log4net;

namespace asp_net_mvc_crud.Controllers
{
    public class CustomController <TController>: Controller where TController: class
    {
        protected readonly ILog Log = LogManager.GetLogger(typeof(TController));
    }
}