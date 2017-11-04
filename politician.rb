# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Politician class object for voter simulation:
# > Politician is a child of the Person class
# > must be able to read and write political_affiliation
#   

class Politician < Person
    
    attr_accessor :registered_party
         
    def initialize(name, party)
        super(name)
        if party == " "
            @registered_party = "None"
        else     
            @registered_party = party
        end
    end
end
