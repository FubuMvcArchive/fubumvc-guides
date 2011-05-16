using System.Web.Routing;
using FubuCore;
using FubuMVC.Core.Diagnostics;
using FubuMVC.Core.Registration.Conventions;
using FubuMVC.Core.Registration.Nodes;
using FubuMVC.Core.Registration.Routes;

namespace FubuMVC.GuideApp.Examples
{
    public class ActionQueryCommandUrlPolicy : IUrlPolicy
    {
        public bool Matches(ActionCall call, IConfigurationObserver log)
        {
            return
                call.HandlerType.Name.EndsWith("Action")
                && (
                    call.Method.Name.Equals("Query")
                    || call.Method.Name.Equals("Command")
                );
        }

        public IRouteDefinition Build(ActionCall call)
        {
            var handler = call.HandlerType.Name.Replace("Action", "");
            var methodName = call.Method.Name;
            var pattern = "{0}".ToFormat(handler);

            var definition = call.HasInput
                ? RouteBuilder.Build(call.InputType(), pattern)
                : new RouteDefinition(pattern);

            var httpMethod = methodName.Equals("Query") ? "GET" : "POST";

            definition.AddRouteConstraint(
                    RouteConstraintPolicy.HTTP_METHOD_CONSTRAINT,
                    new HttpMethodConstraint(httpMethod));

            return definition;
        }
    }
}