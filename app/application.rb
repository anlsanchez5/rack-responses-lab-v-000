class Application
  def call(env)
    resp = Rack::Response.new

    time = Time.now
  binding.pry
    resp.write "#{time}"

    if time <= 12
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon!"
    end
    rep.finish
  end
end
