# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Person class object for voter simulation:
#   > must be able to create and return person_name
# 
class Person
    
    attr_accessor :name
    
    def initialize(name)
        if name == " "
           raise ArgumentError
        else
           @name = name
        end
    end
        
    def person_name
        person_name = "Person is named #{@name}."
    end
      
end # end of Person class






