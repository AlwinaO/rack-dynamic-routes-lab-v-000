class Application

  @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      binding.pry
      item = @@items.find{|p| p.price == item_name}
      resp.write item.price

    end


  end

end
