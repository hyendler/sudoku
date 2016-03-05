get '/' do
  @game = Game.first.display_initial_board
  erb :index
end

get '/update' do
  @game = Game.first.solve

end
