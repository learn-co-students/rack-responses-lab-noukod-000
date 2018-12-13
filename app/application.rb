class Application
  def call env
    res = Rack::Response.new

    if Time.now.hour < 12
      res.write "Good Morning!"
      res.write Time.now.hour
    else
      res.write "Good Afternoon!"
      res.write Time.now.hour
    end
    res.finish
  end
end
