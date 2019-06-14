class Application
  def call(env)
    resp = Rack::Response.new

    time_ = Time.now.hour

    if time_ > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end
