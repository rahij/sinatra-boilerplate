Dotenv.load

require 'yaml'

Dir.glob("./models/*").each do |model|
  require model
end

class App < Sinatra::Base
  configure do
    enable :logging
  end
  set :environment, ENV['RACK_ENV']
  set :public_folder, Proc.new { File.join(root, "public") }
  set :views, Proc.new { File.join(root, "templates") }
  register Sinatra::ActiveRecordExtension

  require "./lib/myApp"
end
