class IndexController < Base::Controller
  actions :hello, :bye

  # GET /all/:id
  def hello
    html "<p>Hello, you're asked a #{request.method} #{request.path}</p> \n
          <a href='/bye'>Visit <b>bye</b> action</a>
          <p>#{Base::App.settings.app_dir}</p>
          <p><img src='/images/amethyst.jpg'></p>
         "
  end

  # GET /bye
  def bye   #bye action
    text "Bye !We hope you will come back"
  end
end
