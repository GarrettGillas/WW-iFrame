use Rack::Static, 
  :urls => ["/images", "/js", "/css", "/assets", "/fonts", "/facebook", "/youtube", "/facebook/assets", "/facebook/fonts", "/facebook/images", "/youtube/assets", "youtube/fonts"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}

