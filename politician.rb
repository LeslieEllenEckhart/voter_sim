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
    
    @@political_affiliation = " "
      
    def initialize(name, party)
         super(name)
        if party == " "
            @registered_party = "None"
            @@political_affiliation = @registered_party
        else     
            @registered_party = party
            @@political_affiliation = @registered_party
        end
    end
    
    def affiliation
        affiliation = "Affiliation is #{@@political_affiliation}."
    end 
    
    def affiliation_update(new_party)
        if new_party == " "
            raise ArgumentError
        else
            @registered_party = new_party
            @@political_affiliation = @registered_party
            affiliation_update = "Affiliation is #{@@political_affiliation}."
        end
    end 
    
end
