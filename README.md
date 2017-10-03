[<img src="https://cdn.anychart.com/images/logo-transparent-segoe.png?2" width="234px" alt="AnyChart - Robust JavaScript/HTML5 Chart library for any project">](https://anychart.com)
# Julia basic template

This example shows how to use Anychart library with the Julia programming language and MySQL database.

## Running

To use this sample you must have Julia installed, if not visit [Julia download page](http://julialang.org/downloads/);
MySQL installed and running, if not please check out [MySQL download page](https://dev.mysql.com/downloads/installer/) and follow [these instructions](http://dev.mysql.com/doc/refman/5.7/en/installing.html).

To check your installations, run the following command in the command line:
```
$ julia -v
julia version 0.5.0 # sample output

$ mysql --version
mysql  Ver 14.14 Distrib 5.5.52, for debian-linux-gnu (x86_64) using readline 6. # sample output
```

To start this example run commands listed below.

Clone the repository from github.com:
```
$ git clone git@github.com:anychart-integrations/julia-http-mysql-template.git
```

Navigate to the repository folder:
```
$ cd julia-http-mysql-template
```

Set up MySQL database, use -u -p flags to provide username and password:
```
$  mysql < database_backup.sql
```

Run Julia:
```
$ julia
```

Install application dependencies, one after another and quit Julia:
```
julia> Pkg.update()
julia> Pkg.add("HttpServer")
julia> Pkg.add("Mustache")
julia> Pkg.add("MySQL")
julia> quit()
```

Run application:
```
$ julia app.jl
```

Open browser at http://localhost:8000/

## Workspace
Your workspace should look like:
```
julia-http-mysql-template/
    app.js                  # main Julia code
    database_backup.sql     # MySQL database dump
    index.html              # html template
    LICENSE
    README.md
```

## Technologies
Language - [Julia](http://julialang.org/)<br />
Web server - [HttpServer.jl](https://github.com/JuliaWeb/HttpServer.jl)<br />
Html template - [Mustache](https://github.com/jverzani/Mustache.jl)<br />
Database - [MySQL](https://www.mysql.com/)<br />


## Further Learning
* [Documentation](https://docs.anychart.com)
* [JavaScript API Reference](https://api.anychart.com)
* [Code Playground](https://playground.anychart.com)
* [Technical Support](https://anychart.com/support)

## License
AnyChart Julia/MySql integration sample includes two parts:
- Code of the integration sample that allows to use Javascript library (in this case, AnyChart) with Julia language and MySql database. You can use, edit, modify it, use it with other Javascript libraries without any restrictions. It is released under [Apache 2.0 License](https://github.com/anychart-integrations/julia-http-mysql-template/blob/master/LICENSE).
- AnyChart JavaScript library. It is released under Commercial license. You can test this plugin with the trial version of AnyChart. Our trial version is not limited by time and doesn't contain any feature limitations. Check details [here](https://www.anychart.com/buy/).

If you have any questions regarding licensing - please contact us. <sales@anychart.com>
