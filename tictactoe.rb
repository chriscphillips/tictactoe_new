 
    def play_random(a,b,c,d,e,f,g,h,i) 
       grill_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h, 9 => i}
       all_grill = [1,2,3,4,5,6,7,8,9]
       taken_grill = []
       (1..9).each do |i|
            if grill_hash[i] != ""
            taken_grill.push(i)
            end
          
    end
            untaken_grill = all_grill - taken_grill  
            random_pick = untaken_grill.shuffle.pop.to_s
            a = "grill"
            out = a<<random_pick 
            return out

    end

    def winners(a,b,c,d,e,f,g,h,i)
       x_wins = ["X", "X", "X"]
       o_wins = ["O", "O", "O"] 
       puts a,b,c,d,e,f,g,h,i   
       win_grills = [[a,b,c],[d,e,f],[g,h,i],[a,d,g],[b,e,h],[c,f,i],[a,e,i],[c,e,g]]
       (0..7).each do |i|
        plays = win_grills[i] 
        print plays
            if plays == x_wins
                $result = "X's have won"
                break
            elsif plays == o_wins
                $result = "O's have won"
                break 
            else
                $result = "No Winner Yet"
            end
        end
        return $result 
    end

    def plays_ai(a,b,c,d,e,f,g,h,i) 
        grill_hash = {1 => a, 2 => b, 3 => c, 4 => d, 5 => e, 6 => f, 7 => g, 8 => h,  }
        all_grill = [1,2,3,4,5,6,7,8,9]

    gwin1 = {1 => a, 2 => b, 3 => c}
    gwin2 = {4 => d, 5 => e, 6 => f}
    gwin3 = {7 => g, 8 => h, 9 => i}
    gwin4 = {1 => a, 4 => d, 7 => g}
    gwin5 = {2 => b, 5 => e, 8 => h}
    gwin6 = {3 => c, 6 => f, 9 => i}
    gwin7 = {1 => a, 5 => e, 9 => i}
    gwin8 = {3 => c, 5 => e, 7 => g}


    middle_sides = {2 => b, 4 =>d, 6 => f, 8 => h} 
    middle_sides.each do | key , value |
        if value == ""
            $ai_pick = key
        end
    end

    corners = {1 => a, 3 => c, 7 => g, 9 => i}                               
    corners.each do |key, value|
        if value == ""
            $ai_pick = key
        end
    end        


    win_squares = [win1,win2,win3,win4,win5,win6,win7,win8]
    (0..7).each do |i|                            
        three = win_squares[i] 
        x_num = three.select {|k,v| v == "X"} 
        o_num = three.select {|k,v| v == "O"}
        no_num = three.select {|k,v| v == ""}
        if x_num.length == 2 
            if o_num.length < 1
                $ai_pick =  no_num.key("")
            end    
        end
    end    


    (0..7).each do |i|
        three = win_squares[i] 
        x_num = three.select {|k,v| v == "X"} 
        o_num = three.select {|k,v| v == "O"}
        no_num = three.select {|k,v| v == ""}
        if o_num.length == 2 
            if x_num.length < 1
                $ai_pick =  no_num.key("")
            end    
        end                 
    end

    if all_hash[5] == ""         
        $ai_pick = 5.to_s     
    end    

   
    if all_squares == ["X","","","","O","","","","X"]
        $ai_pick  = 2
    elsif    all_squares == ["","","X","","O","","X","",""]
        $ai_pick  = 2
    end
        
    a = "square"
     out = a<<$ai_pick.to_s 
    return out
end
