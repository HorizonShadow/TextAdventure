require "TextAdventure/version"
require 'data_mapper'
require 'sinatra'
require 'haml'

set :run, false
module TextAdventure
  DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data/data.db")
  DataMapper.finalize
  DataMapper.auto_migrate!

  class Server < Sinatra::Application
    get '/?' do
      haml :locations
    end

    def self.start!(port)
      Thread.new do
        Server.run!(port: port)
      end
    end

    def self.stop!
      Server.quit!
    end
  end
end
