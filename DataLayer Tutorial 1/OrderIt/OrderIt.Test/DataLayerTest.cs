using System;
using System.Collections.Generic;
using System.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OfficeSoft.Data.Sql;
using OfficeSoft.T4;
using OfficeSoft.VisualStudio;

namespace OrderIt.Test
{
    [TestClass]
    public class DataLayerTest
    {
        public IDatabaseManager GetDatabaseManager()
        {
            return new SqlDatabaseManager(@"Localhost\SQLEXPRESS", "DotErpDb");
        }


 
        public string GetOutPutDirectory()
        {
            return @"C:\Users\supportadmin\Documents\GitHub\TrinityFramework\DataLayer Tutorial 1\OrderIt\OrderIt.Data\";
        }

        public string GetWorkDirectory()
        {
            return Environment.CurrentDirectory.Replace(@"\bin\Debug","");
        }

        public string GetTemplate(string name)
        {
           

            return string.Format(@"{0}\_Templates\{1}",
                GetWorkDirectory(), name);
        }



        [TestMethod]
        public void CreateDataLayerTestMethod()
        {
            var assembliesFileList = new List<string>();
            IDatabaseManager databaseManager = GetDatabaseManager();


            var folder = new DirectoryInfo(Path.Combine(GetWorkDirectory(),"_Templates"));
            foreach (var file in folder.GetFiles("*.dll"))
            {
                assembliesFileList.Add(file.FullName);
            }


            var template = new TemplateManager(GetTemplate("CrudEntity.tt"));
            var templateExtention = new TemplateManager(GetTemplate("CrudEntity.Extention.tt"));

            template.AssemblyReferences.AddRange(assembliesFileList);
            templateExtention.AssemblyReferences.AddRange(assembliesFileList);

            var project = new VisualStudioProject();
            project.ProjectName = "OrderIt.Data";
            project.ProjectPath = GetOutPutDirectory();

            var tables = databaseManager.GetTableList();
            foreach (var table in tables)
            {
                template.SetParameter("namespacename", "OrderIt.Data.Models");
                template.SetParameter("classname", table.Name);
                template.SetParameter("table", table);

                templateExtention.SetParameter("namespacename", "OrderIt.Data.Models");
                templateExtention.SetParameter("classname", table.Name);
             

                var result =
                    template.RenderTemplateToFile(
                        string.Format(@"{0}\TableModels\{1}.Generated.cs", GetOutPutDirectory(), table.Name),
                        true);

                var resultExtentions =
                    templateExtention.RenderTemplateToFile(
                        string.Format(@"{0}\TableModels\{1}.cs", GetOutPutDirectory(), table.Name),
                        false);

                Assert.IsFalse(result.HasErrors);
                Assert.IsFalse(resultExtentions.HasErrors);


                project.AddClass(string.Format(@"TableModels\{0}.cs", table.Name));
                project.AddClass(string.Format(@"TableModels\{0}.Generated.cs", table.Name), string.Format("{0}.cs", table.Name));

            }
            project.Save();

        }
    }
}
