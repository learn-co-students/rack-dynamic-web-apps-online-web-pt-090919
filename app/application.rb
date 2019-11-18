class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write("#{num_1}\n")
    resp.write("#{num_2}\n")
    resp.write("#{num_3}\n")

    num_1 == num_2 && num_2 == num_3 ? resp.write("You Win") : resp.write("You Lose")

    resp.finish
  end

end

# LOCAL HOST A PORT 

# [2019-11-18 09:08:05] INFO  WEBrick 1.4.2
# [2019-11-18 09:08:05] INFO  ruby 2.6.3 (2019-04-16) [x86_64-darwin17]
# [2019-11-18 09:08:05] INFO  WEBrick::HTTPServer#start: pid=4236 port=9292


