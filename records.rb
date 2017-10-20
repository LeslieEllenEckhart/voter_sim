class Records
    require './voter.rb' 
    voter_registry = []
    politician_registry = []
    
    def initialize()
    end

    def create voter
    end
    
    def create poli
    end
    
    def list
        results = " "
        voter.each do |voter|
            results += "Voter, #{voter.name}, #{voter.aff}\n"
        end
        
        politician.each do |pol|
            results += "Voter, #{voter.name}, #{voter.aff}\n"
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
#                     results += "voter, "
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
    




end

