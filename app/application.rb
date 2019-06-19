class Application
  def call(env)
    resp = Rack::Response.new

    time =  Time.now
    resp.write("The current time is: #{time}\n")

    if time.hour.between?(12,24)
      resp.write("Good Afternoon!")
    else
      resp.write("Good Morning!")
    end

    resp.finish
  end
end
