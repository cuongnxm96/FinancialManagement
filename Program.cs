
// using System.Reflection;
using System.Reflection;
using DbUp;

string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "";
string tablesCreateDirectory = Path.Combine(path, @"Scripts\Tables\Create");
string tablesUpdateDirectory = Path.Combine(path, @"Scripts\Tables\Update");
var upgradeEngine = DeployChanges.To
    .SqlDatabase("Server=103.110.85.206; Database=db_FinancialManagement; User Id=user_fm; Password=fmdb@12345; TrustServerCertificate=True;")
    .WithScriptsFromFileSystem(tablesCreateDirectory)
    // .WithScriptsFromFileSystem(tablesUpdateDirectory, new DbUp.Engine.SqlScriptOptions{RunGroupOrder = 2})
    .LogToConsole()
    .Build();
var result = upgradeEngine.PerformUpgrade();