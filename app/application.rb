require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new
    datetime = Time.now.strftime("%k").to_i
    
    if datetime >= 12 
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end

