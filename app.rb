require "sinatra"
require_relative "tictactoe.rb"

get '/' do
	winner_result = ""
    erb :home
end

post '/board' do 
    grill1 = params[:grill1]
    grill2 = params[:grill2]
    grill3 = params[:grill3]
    grill4 = params[:grill4]
    grill5 = params[:grill5]
    grill6 = params[:grill6]
    grill7 = params[:grill7]
    grill8 = params[:grill8]
    grill9 = params[:grill9]
    redirect '/play?grill1=' + grill1.upcase + '&grill2=' + grill2.upcase + '&grill3=' + grill3.upcase + '&grill4=' + grill4.upcase + '&grill5=' + grill5.upcase + '&grill6=' + grill6.upcase + '&grill7=' + grill7.upcase + '&grill8=' + grill8.upcase + '&grill9=' + grill9.upcase  
end

get '/play' do
	winner_result = ""
   grill1 = params[:grill1]
   grill2 = params[:grill2]
   grill3 = params[:grill3]
   grill4 = params[:grill4]
   grill5 = params[:grill5]
   grill6 = params[:grill6]
   grill7 = params[:grill7]
   grill8 = params[:grill8]
   grill9 = params[:grill9]
    play_o = play_random(grill1, grill2, grill3, grill4, grill5, grill6, grill7, grill8, grill9) 
    if play_o == "grill1"
      grill1 = "O" 
    elsif play_o == "grill2"
	  grill2 = "O"
	elsif play_o == "grill3"
	   grill3 = "O"
	elsif play_o == "grill4"
		grill4 = "O"
	elsif play_o == "grill5"
		grill5 = "O"
	elsif play_o == "grill6"
		grill6 = "O"
	elsif play_o == "grill7"
		grill7 = "O"
	elsif play_o == "grill8"
		grill8 = "O"
	elsif play_o == "grill9"
		grill9 = "O"
	end

    if grill1 == "O"
      grill1 = "O"
   elsif grill1 == ""
    grill1 = ""
   else
    grill1 = "X"
   end
   if grill2 == "O"
    grill2 = "O"
   elsif grill2 == ""
    grill2 = ""
   else
    grill2 = "X"
   end
   if grill3 == "O"
    grill3 = "O"
   elsif grill3 == ""
    grill3 = ""
   else
    grill3 = "X"
   end
   if grill4 == "O"
    grill4 = "O"
   elsif grill4 == ""
    grill4 = ""
   else
    grill4 = "X"
   end
   if grill5 == "O"
    grill5 = "O"
   elsif grill5 == ""
    grill5 = ""
   else
    grill5 = "X"
   end
   if grill6 == "O"
    grill6 = "O"
   elsif grill6 == ""
    grill6 = ""
   else
    grill6 = "X"
   end
   if grill7 == "O"
    grill7 = "O"
   elsif grill7 == ""
    grill7 = ""
   else
    grill7 = "X"
   end
   if grill8 == "O"
    grill8 = "O"
   elsif grill8 == ""
    grill8 = ""
   else
    grill8 = "X"
   end
   if grill9 == "O"
    grill9 = "O"
   elsif grill9 == ""
    grill9 = ""
   else
    grill9 = "X"
   end
    winner_result = winners(grill1.upcase, grill2.upcase, grill3.upcase, grill4.upcase, grill5.upcase, grill6.upcase, grill7.upcase, grill8.upcase, grill9.upcase) 
    erb :play, :locals => {:grill1 => grill1, :grill2 => grill2, :grill3 => grill3, :grill4 => grill4, :grill5 => grill5, :grill6 => grill6, :grill7 => grill7, :grill8 => grill8, :grill9 => grill9, :winner_result => winner_result}
end


