class Application

  def call(env)
    resp = Rack::Response.new

    time_1 = Kernel.rand(1..12)
    time_2 = Kernel.rand(13..24)

    if time_1
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
