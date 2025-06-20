
// using System.Reflection;
using System.Reflection;
using DbUp;

string path = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) ?? "";
string tablesCreateDirectory = Path.Combine(path, @"Scripts\Tables\Create");
var upgradeEngine = DeployChanges.To
    .SqlDatabase("Server=103.110.85.206; Database=db_FinancialManagement; User Id=user_fm; Password=fmdb@12345; TrustServerCertificate=True;")
    .WithScriptsFromFileSystem(tablesCreateDirectory)
    .LogToConsole()
    .Build();
var result = upgradeEngine.PerformUpgrade();
Console.WriteLine(tablesCreateDirectory);   