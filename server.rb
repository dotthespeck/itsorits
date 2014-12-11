require 'sinatra'
require 'sanitize'

get '/' do

erb :index
end

post '/create_sentence' do

old_sentence = params[:old_sentence]
@old_sentence = Sanitize.clean(old_sentence)
@new_sentence = @old_sentence.to_s

erb :new_sentence

end

get '/yes' do

  erb :yes
end

get '/no' do

 erb :no
end
