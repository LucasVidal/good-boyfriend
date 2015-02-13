require 'sinatra/base'

class App < Sinatra::Base

  configure do
    set :public_folder, "public"
  end

  get "/" do
    erb :index
  end

  get "/jobs/:job" do
    erb params[:job].to_sym
  end

end
