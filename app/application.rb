class Application

  @@items = [Item.new("Figs",3.42),Item.new("Pears",0.99)]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)


    if req.path.match(/items/)
    binding.pry

      end


    elsif req.path.match(/items/)
      item_price = @@items.collect do |item|
        # binding.pry

      end


    end

    resp.finish
  end

end


# req.path.match(/testing/)
#   resp.status = 404
#   resp.write  "Route not found"

# @@items.include? do |item|
#   binding.pry
#   resp.status = 404
#   resp.write  "Route not found"
