   
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

    



    



