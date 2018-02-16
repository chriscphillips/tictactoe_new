require "sinatra"
require_relative "tictactoe.rb"

get '/' do
	winner_result = ""
    erb :home
end

post '/board' do 
    grid1 = params[:grid1]
    grid2 = params[:grid2]
    grid3 = params[:grid3]
    grid4 = params[:grid4]
    grid5 = params[:grid5]
    grid6 = params[:grid6]
    grid7 = params[:grid7]
    grid8 = params[:grid8]
    grid9 = params[:grid9]
    puts grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8, grid9
    redirect '/play?grid1=' + grid1 + '&grid2=' + grid2 + '&grid3=' + grid3 + '&grid4=' + grid4 + '&grid5=' + grid5 + '&grid6=' + grid6 + '&grid7=' + grid7 + '&grid8=' + grid8 + '&grid9=' + grid9 
end

get '/play' do
	winner_result = ""
    grid1 = params[:grid1]
    grid2 = params[:grid2]
    grid3 = params[:grid3]
    grid4 = params[:grid4]
    grid5 = params[:grid5]
    grid6 = params[:grid6]
    grid7 = params[:grid7]
    grid8 = params[:grid8]
    grid9 = params[:grid9]
    play_o = play_random(grid1, grid2, grid3, grid4, grid5, grid6, grid7, grid8, grid9)
    puts play_o 
    if play_o == "grill1"
       grid1 = "O" 
    elsif play_o == "grill2"
	   grid2 = "O"
	elsif play_o == "grill3"
	   grid3 = "O"
	elsif play_o == "grill4"
		grid4 = "O"
	elsif play_o == "grill5"
		grid5 = "O"
	elsif play_o == "grill6"
		grid6 = "O"
	elsif play_o == "grill7"
		grid7 = "O"
	elsif play_o == "grill8"
		grid8 = "O"
	elsif play_o == "grill9"
		grid9 = "O"
	end
    winner_result = winners(grid1.upcase, grid2.upcase, grid3.upcase, grid4.upcase, grid5.upcase, grid6.upcase, grid7.upcase, grid8.upcase, grid9.upcase) 
    erb :play, :locals => {:grid1 => grid1, :grid2 => grid2, :grid3 => grid3, :grid4 => grid4, :grid5 => grid5, :grid6 => grid6, :grid7 => grid7, :grid8 => grid8, :grid9 => grid9, :winner_result => winner_result}
end

