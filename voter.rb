# Class for a "voter" for voter simulation
# 
class Voter < Person
    attr_accessor :political_affiliation
   
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
    
    def political_affiliation
        political_affiliation = "Political affiliation is #{@@political_view}."
    end 
    
    def affiliation_update(new_affiliation)
        if new_affiliation == " "
            raise ArgumentError
        else
            @new_affiliation = new_affiliation
            @@political_view = @new_affiliation
            affiliation_update = "New political affiliation is #{@@political_view}."
        end
    end 
    
end
