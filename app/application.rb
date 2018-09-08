class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/testing/)
      resp.status = 404
      resp.write  "Route not found"

    end

    resp.finish
  end

end
