# class application
#   def call(env)
#     resp = Rack::Response.new
# 
#     time = Time.now.hour
# 
#     if time <= 12
#       resp.write "Good Morning!"
#     else
#       resp.write "Good Afternoon!"
#     end
# 
#     resp.finish
#   end
#   # if Time.now.hour.between?(0, 11)
#   #     resp.write "Good Morning!"
#   #   elsif Time.now.hour.between?(12, 17)
#   #     resp.write "Good Afternoon."
#   #   else
#   #     resp.write "Good Evening!"
#   #   end
#   #    resp.finish
#   #end
# end

class Application
   def call(env)
    resp = Rack::Response.new
     if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    elsif Time.now.hour.between?(12, 17)
      resp.write "Good Afternoon."
    else
      resp.write "Good Evening!"
    end
     resp.finish
  end
end
