require 'sinatra'

configure do
  set :server, :puma
  set :port, ENV['PORT']
end

get '*' do
  File.read(File.join(settings.root, 'index.html'))
end
