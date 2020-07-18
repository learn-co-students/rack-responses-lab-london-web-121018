class Application
  def call(env)
    resp = Rack::Response.new

      case (Time.now.hour)
      when 0..12
        resp.write "Good Morning"
      else
        resp.write "Good Afternoon"
      end

    resp.finish
  end
end
