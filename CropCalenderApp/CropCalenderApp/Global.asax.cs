using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;
using AutoMapper;
using CropCalender.Models.EntityModels;
using CropCalenderApp.ViewModels;

namespace CropCalenderApp
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Mapper.Initialize(cfg =>
            {
                cfg.CreateMap<CropAdviceViewModel, CropAdvice>().ForMember(dest=>dest.Id,opt=>opt.MapFrom(src=>src.CropAdviceId));
                cfg.CreateMap<CropAdvice, CropAdviceViewModel>().ForMember(dest => dest.CropAdviceId, opt => opt.MapFrom(src => src.Id));

                cfg.CreateMap<CropAdviceListVm, CropAdvice>().ForMember(dest => dest.Id, opt => opt.MapFrom(src => src.CropAdviceId));
                cfg.CreateMap<CropAdvice, CropAdviceListVm>().ForMember(dest => dest.CropAdviceId, opt => opt.MapFrom(src => src.Id));
            });

        }
    }
}
