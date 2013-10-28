root  = File.expand_path(".")
index = "presentation.html"

use Rack::Static,
  urls:         Dir.glob(File.join(root, "*")).map { |file| file.sub(root, "") },
  root:         root,
  index:        index,
  header_rules: [ [:all, {"Cache-Control" => "public, max-age=3600"}] ]
  
headers = {
  "Content-Type"   => "text/html",
  "Content-Length" => "9"
}

run ->(env) { [404, headers, ["Not Found"]] }
