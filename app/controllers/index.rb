get '/' do
  @game = Game.first.display_initial_board
  erb :index
end

get '/solve/:id' do
	if params[:id] == "1"
	  @game = Game.find(params[:id])
	  @game.solve.to_a.to_json
	else
		@game = Game.find(params[:id])
		@game.solve.to_a.to_json
	end
end

get '/show' do
	@game = Game
end
