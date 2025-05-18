require "rack/static"

root  = File.expand_path(".")
index = "presentation.html"

use Rack::Static,
  urls: [""], # means: match everything at root
  root: root,
  index: index,
  header_rules: [[:all, { "cache-control" => "public, max-age=3600" }]]

run ->(env) { [404, { "content-type" => "text/plain" }, ["Not Found"]] }
