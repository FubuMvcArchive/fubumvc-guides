using FubuMVC.Core;
using FubuMVC.StructureMap.Bootstrap;

namespace FubuMVC.GuideApp
{ /* This is the Global used for the Getting_started guide. DO NOT DELETE
    public class Global : FubuStructureMapApplication
    {
    }
  */
   
    public class Global : FubuStructureMapApplication
    {
        public override FubuRegistry GetMyRegistry()
        {
            return new AdvBehaviorGuideRegistry();
        }
        
    }
}