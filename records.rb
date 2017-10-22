# Rubyist:  Leslie E. Eckhart
# I-O Avenue, Highway - Fall 2017 cohort
# Project-3: Voter Simulation
# 
# Class for a "voter" for voter simulation
#
class Records
    require './person.rb'
    require './voter.rb'
    require './politician.rb'
    
    attr_accessor :name
    attr_accessor :politics
    attr_accessor :party
    attr_accessor :voter1 
    attr_accessor :politician1
    attr_accessor :list_type
        
    @@political_registry = []
    @@voter_registry = []    
       
    def initialize(list_type)
        if list_type == "V"
            @voter_list = []
            @@voter_registry = @voter_list
        else
            @politician_list = []
            @@political_registry = @politician_list
        end
    end
#
#      Must use "self." for methods that modify @@class variables!
    def self.add_voter(name, politics)
        @voter1 = Voter.new(name,politics)
        @@voter_registry.push(@voter1) 
    end
#
#      Must use "self." for methods that modify @@class variables!
    def self.add_politician(name, party)
        @politician1 = Politician.new(name, party)
        @@political_registry.push(@politician1)
    end
    
    def list
        results = " "
        voter.each do |voter|
            results += "Voter: #{voter.name}, #{voter.aff}\n"
        end
        
        politician.each do |pol|
            results += "Politician: #{Politician.name}, #{Politician.party}\n"
        end
        
        return results  # in main puts records.list
    end
#     show :   voter johndoe, liberal
#                  pol, johndoe2, repub
#    
#     def list all voters and poli     
#         voters_pol +=     (append them to make a string output)
        
#         for loop all voters in array
#             results = " "
#             for name (rubyflow slide 29)
            
#                 voters.each do |voter|
#                     results += "voter: "
#                     results += voter.name
#                     results += ", "
#                     results += voter.affil
#                     results += "\n"
                    
#                     -or0-
#                         results += "voter, #{voter.name}, #{voter.aff}\n"
            
        
    def update_voter 
        # will need to search to find 
    end

    def update_pol
    end
  
    def delete_pol
        #  array.delete_at(2) using index value

    end
end
