module PrintLists
# print out the two Voter Simulation arrays

    def self.print_lists (leon_politician_registry, leon_voter_registry)    
        
        listing1 = " "
        listing2 = " "
        leon_politician_registry.each do |pol|
            listing1 += "Politician: #{pol.name}, #{pol.party}\n"
        end
        puts "Our Voter Registry: #{listing1}"

        leon_voter_registry.each do |voter|
            listing2 += "Voter: #{voter.name}, #{voter.politics}\n"
        end
        puts "Our Politician Registry: #{listing2}"
    end
    
    module_function :print_lists
    
end
