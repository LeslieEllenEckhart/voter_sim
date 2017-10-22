# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for a "voter" for voter simulation
#
require './person.rb'

class Voter < Person
    attr_accessor :political_affiliation
    attr_accessor :name
   
    @@political_view = " "
      
    def initialize(name, politics)
        super(name)
        if politics == " "
            @political_affiliation = "None"
            @@political_view = @political_affiliation
        else     
            @political_affiliation = politics
            @@political_view = @political_affiliation
        end
    end

    def name   
        name  = "#{@@name}"
    end  
   
    def politics
        politics = "#{@@political_view}"
    end 
    
    def affiliation_update(new_affiliation)
        if new_affiliation == " "
            raise ArgumentError
        else
            @new_affiliation = new_affiliation
            @@political_view = @new_affiliation
            affiliation_update = "Updated political affiliation is #{@@political_view}."
        end
    end 
    
end
