class Application

  def call(env)
    resp = Rack::Response.new

    arr = [0, 0, 0]
    arr.map! {|n| Kernel.rand(1..20)}
    arr.each {|n| resp.write "#{n}\n"}

    if arr[0] == arr[1] && arr[1] == arr[2]
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
