get '/' do
  @game = Game.first.display_initial_board
  erb :index
end

get '/solve/:id' do
  @game = Game.find(params[:id]).solve.to_a
  @game.to_json
end

get '/show' do
	@game = Game
end
