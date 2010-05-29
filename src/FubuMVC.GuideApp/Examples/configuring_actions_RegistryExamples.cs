using System;
using FubuMVC.Core;

namespace FubuMVC.GuideApp.Examples
{
    public class configuring_actions_RegistryExamples : FubuRegistry
    {
        public configuring_actions_RegistryExamples()
        {
            Actions
                .IncludeTypesNamed(x => x.EndsWith("Controller"))
                .IncludeTypesImplementing<IAction>();

            Routes
                .IgnoreControllerNamespaceEntirely()
                .IgnoreMethodsNamed("Index");

            Routes.ConstrainToHttpMethod(x => x.Method.Name == "Post", "POST");

        }
    }

    public interface IAction{}
}