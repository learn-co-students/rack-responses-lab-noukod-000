class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.hour

    if time <= 12
      resp.write "Hello, Good Morning!"
    else
      resp.write "Hello, Good Afternoon!"
    end

    resp.finish
  end
end
