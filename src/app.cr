require "amethyst"

require "./controllers/index_controller"

class Amtest < Base::App
  settings.configure do |conf|
    conf.environment = "development"
    conf.static_dirs = ["/assets"]
  end

  routes.draw do
    all "/all/:id", "index#hello"
    get "/",    "index#hello"
    get "/bye", "index#bye"

    register IndexController
  end

  # Middleware registering
  use Middleware::TimeLogger
end

app = Amtest.new
app.serve
