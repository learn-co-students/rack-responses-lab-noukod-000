class Application

  def call(env)
    resp = Rack::Response.new

 time = Kernel.rand(0..24)

    if time > 11
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end
