# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Politician class object for voter simulation:
# > Politician is a child of the Person class
# > must be able to read and write political_affiliation
#   

class Politician < Person
    
    attr_accessor :political_affiliation
      
    def initialization(name, party)
        if name == " " 
            raise ArgumentError
        else
            @politician_name = name
            @@name = @politician_name
        end
        
        if party == " "
            @political_affiliation = "None"
        else
            @political_affiliation = party
        end
        
    end
    
    
    
    
    
end
