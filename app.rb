require 'sinatra'

class BirthdayApp < Sinatra::Base

  enable :sessions

  get ('/') do
    erb(:index)
  end

  post('/birthday') do

  end

end
