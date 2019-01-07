require 'time'
class Application
  def call(env)
    resp = Rack::Response.new

  t=Time.now()


    if t < Time.parse("12:00")
      resp.write("Good Morning")
    else Time.parse("12:00")> t  && t < Time.parse("18:00")
      resp.write("Good Afternoon!")
    # else
    #   resp.write("Good Evening")
    end
    resp.finish

  end
end
