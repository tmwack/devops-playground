# .NET Core spike

Spiking .NET core and taking some notes.

## .NET Core versions

There are two current versions of .NET Core: v1.0.x and v1.1.x. The primary differences are [support SLA](https://www.microsoft.com/net/core/support), and [project specification format](https://docs.microsoft.com/en-us/dotnet/articles/core/tools/project-json-to-csproj). Both versions support C# 7 (.NET Core SDK 1.0.0).

.NET Core v2.0.x is [scheduled for release Q3 2017](https://github.com/dotnet/core/blob/master/roadmap.md#ship-dates).

### .NET Core 1.0.x

* LTS version, providing 3 years of support.
* Ships with VS2015
* [project.json format or csproj format](https://www.stevejgordon.co.uk/project-json-replaced-by-csproj)
  * csproj format shipped with VS2017

### .NET Core 1.1.x

* Current version, providing 3 months of support with each release.
  * Must upgrade toolchain every 3 months
* Ships with VS2017
* [csproj format](https://docs.microsoft.com/en-us/dotnet/articles/core/tools/csproj)