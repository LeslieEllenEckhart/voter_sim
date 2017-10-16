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
    
    @@party_affiliation = " "
      
    def initialize(name, party)
        super(name)
        if party == " "
            @registered_party = "None"
            @@party_affiliation = @registered_party
        else     
            @registered_party = party
            @@party_affiliation = @registered_party
        end
    end
    
    def party
        party = "Party affiliation is #{@@party_affiliation}."
    end 
    
    def party_update(new_party)
        if new_party == " "
            raise ArgumentError
        else
            @registered_party = new_party
            @@party_affiliation = @registered_party
            affiliation_update = "Party affiliation is #{@@party_affiliation}."
        end
    end 
    
end
