module WorldMethods
    require './records'
# Create both the Voter and Politician registration lists:    

     def self.affiliation_title(v_pol)
         attr_accessor :v_politics
         
         case 
            when v_pol == "C" || v_pol == "c"
                @v_politics = "Conservative"
            when v_pol == "L" || v_pol == "l"
                @v_politics = "Liberal"
            when v_pol == "N" || v_pol == "n"
                @v_politics = "Neutral"
            when v_pol == "S" || v_pol == "s"
                @v_politics = "Socialist"
            when v_pol == "T" || v_pol == "t"
                @v_politics = "Tea Party"
            else
                @v_politics = v_pol
         end
         return @v_politics
     end
    
     def self.party_title(p_pty)
         attr_accessor :p_party
         
         case 
            when p_pty == "D" || p_pty == "d" 
                @p_party = "Democrat"
            when p_pty == "G" || p_pty == "g" 
                @p_party = "Green"
            when p_pty == "I" || p_pty == "i"
                @p_party = "Independent"
            when p_pty == "R" || p_pty == "r"
                @p_party = "Republican"
            else
                @p_party = p_pty
         end
         return @p_party
     end
    
end
