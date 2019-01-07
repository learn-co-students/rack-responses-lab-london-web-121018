class Application

    def call(env)
      resp = Rack::Response.new
      time = Time.now.utc
      now = time.to_a
      if now[2] < 12
        resp.write "Good Morning!"
      else 
        resp.write "Good Afternoon!"
      end
      resp.finish
    end
  
  end
  