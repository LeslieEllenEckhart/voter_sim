module PrintLists
# print out the two Voter Simulation arrays
    attr_accessor :listing1
    attr_accessor :listing2
    
    def self.print_lists (leon_politician_registry, leon_voter_registry)    
        
        listing1 = " "
        listing2 = " "
        leon_politician_registry.each do |politician|
            listing1 += "Politician: #{politician.name}, #{politician.party}\n"
        end
        puts "Our Politician Registry: #{listing1}"

        leon_voter_registry.each do |voter|
            listing2 += "Voter: #{voter.name}, #{voter.politics}\n"
        end
        puts "Our Voter Registry: #{listing2}"
    end
    
end
