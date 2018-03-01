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
    opponent = params[:opponent]
    redirect '/play?grill1=' + grill1.upcase + '&grill2=' + grill2.upcase + '&grill3=' + grill3.upcase + '&grill4=' + grill4.upcase + '&grill5=' + grill5.upcase + '&grill6=' + grill6.upcase + '&grill7=' + grill7.upcase + '&grill8=' + grill8.upcase + '&grill9=' + grill9.upcase + '&opponent=' + opponent  
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
   opponent = params[:opponent]
    if opponent == "Easy"
         play_x = play_random(grill1, grill2, grill3, grill4, grill5, grill6, grill7, grill8, grill9)
    end
    if opponent == "Hard"
         play_x = plays_ai(grill1, grill2, grill3, grill4, grill5, grill6, grill7, grill8, grill9)
    end
    if play_x == "grill1"
      grill1 = "X" 
    elsif play_x == "grill2"
	  grill2 = "X"
	elsif play_x == "grill3"
	   grill3 = "X"
	elsif play_x == "grill4"
		grill4 = "X"
	elsif play_x == "grill5"
		grill5 = "X"
	elsif play_x == "grill6"
		grill6 = "X"
	elsif play_x == "grill7"
		grill7 = "X"
	elsif play_x == "grill8"
		grill8 = "X"
	elsif play_x == "grill9"
		grill9 = "X"
	end

    if grill1 == "X"
      grill1 = "X"
   elsif grill1 == ""
    grill1 = ""
   else
    grill1 = "O"
   end
   if grill2 == "X"
    grill2 = "X"
   elsif grill2 == ""
    grill2 = ""
   else
    grill2 = "O"
   end
   if grill3 == "X"
    grill3 = "X"
   elsif grill3 == ""
    grill3 = ""
   else
    grill3 = "O"
   end
   if grill4 == "X"
    grill4 = "X"
   elsif grill4 == ""
    grill4 = ""
   else
    grill4 = "O"
   end
   if grill5 == "X"
    grill5 = "X"
   elsif grill5 == ""
    grill5 = ""
   else
    grill5 = "O"
   end
   if grill6 == "X"
    grill6 = "X"
   elsif grill6 == ""
    grill6 = ""
   else
    grill6 = "O"
   end
   if grill7 == "X"
    grill7 = "X"
   elsif grill7 == ""
    grill7 = ""
   else
    grill7 = "O"
   end
   if grill8 == "X"
    grill8 = "X"
   elsif grill8 == ""
    grill8 = ""
   else
    grill8 = "O"
   end
   if grill9 == "X"
    grill9 = "X"
   elsif grill9 == ""
    grill9 = ""
   else
    grill9 = "O"
   end
   
    winner_result = winners(grill1.upcase, grill2.upcase, grill3.upcase, grill4.upcase, grill5.upcase, grill6.upcase, grill7.upcase, grill8.upcase, grill9.upcase) 
    erb :play, :locals => {:grill1 => grill1, :grill2 => grill2, :grill3 => grill3, :grill4 => grill4, :grill5 => grill5, :grill6 => grill6, :grill7 => grill7, :grill8 => grill8, :grill9 => grill9, :winner_result => winner_result, :opponent => opponent}
end


