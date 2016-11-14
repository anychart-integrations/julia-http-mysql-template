using HttpServer
using Mustache
using MySQL
using JSON
using DataFrames

conn = mysql_connect("127.0.0.1", "anychart_user", "anychart_pass", "anychart_db")

function loadData()
  df = mysql_execute(conn, "SELECT name, value FROM fruits ORDER BY value DESC LIMIT 5")
  data = []
  for col in eachrow(df)
    push!(data, Dict("name" => col[1], "value" => col[2]))
  end
  data
end

http = HttpHandler() do req::Request, res::Response
  chartData = JSON.json(loadData())
  data = Dict("title" => "Anychart Julia template",
   "chartData" => chartData,
   "chartTitle" => "Top 5 fruits")
  html = render_from_file("index.html", data)
  Response(html)
end

server = Server(http)
run(server, 8000)
