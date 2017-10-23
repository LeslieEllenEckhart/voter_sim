# 
# This the World in which we are maintaining
# Voter and Politician registrations lists.
#
require './person.rb'
require './voter.rb'
require './politician.rb'
require './records.rb'

require './world_setup.rb'
require './print_lists.rb'
require './world_verbiage.rb'

#
# Clear the screen:
blank_line = " "
simulation_loop = false

i = 0 
while i < 34
    puts blank_line 
    i += 1 
end

WorldVerbiage.greeting

# Set-up for the lists by creating instances of both:
politician_records, voter_records = WorldSetUp.voter_politician_arrays_init
    
# Load a "sample voter" and "sample politician" so arrays are not empty.
politician = Politician.new("Sample Politician", "Independent")
politician_records.add_politician(politician)
voter = Voter.new("Sample Voter", "Neutral")
voter_records.add_voter(voter)
puts "As part of the registries set-up, we added sample members:"
PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

simulation_loop = true
simulation_loop_over = false
#
while simulation_loop == true and 
      simulation_loop_over == false

    # prompt for choice_1:
    WorldVerbiage.choice1_qstn

    choice_1 = gets.chomp

    # Tell them what choice_1 they made:
    if choice_1 == "X" or choice_1 == "x"
       simulation_loop_over == true
       break
    elsif choice_1 == "1"
          puts ">>> You have selected to work with the Voter Registry"
       elsif choice_1 == "2"
             puts ">>> You have selected to work with the Politician Registry"
       else
             choice_1 = "1"
             puts ">> Default was selected - to work with the Voter Registry"
    end

    # Prompt for the Voter/Politician record details:
    if choice_1 == "1"
        WorldVerbiage.choice1_eq1
    else
        WorldVerbiage.choice1_eq2
    end

    # prompt for choice_2:
    choice_2 = gets.chomp

    if choice_2 != ("A" "a" "B" "b")
      choice_2 = "A"
    end

    puts "You chose: #{choice_2}"

    # Now in here we need to prompt for adding either a voter or politician
    if choice_1 == "1"
       # this is a voter
       puts " "
       puts "Please type the full name of the voter you wish to add:"
       v_name = gets.chomp
       puts "Voters also need a political affiliation from the following choices:"
       puts "C-Conservative, L-Liberal, N-Neutral, S-Socialist or T-Tea Party"
       puts "Next, please type the Letter for the voter's political affiliation:"
       v_pol = gets.chomp
       case v_pol
            when "C"  
                v_politics = "Conservative"
            when "L"
                v_politics = "Liberal"
            when "N"
                v_politics = "Neutral"
            when "S"
                v_politics = "Socialist"
            when "T"
                v_politics = "Tea Party"
            else
                v_politics = v_pol
        end
        #
        voter = Voter.new(v_name, v_politics)
        puts "Your voter is: #{voter.name} / #{voter.politics} of class: #{voter.class}"
        voter_records.add_voter(voter)
#         puts "Voter List is of class: #{voter_records.class}"
        #
    else # Otherwise this is a politician
        puts "Please type the full name of the politician you wish to add:"
        p_name = gets.chomp
        puts "Politicians also need a political party from the following choices:"
        puts "D-Democrat, G-Green, I-Independent or R-Republican"
        puts "Next, please type the Letter for the politican's political party:"
        p_pty = gets.chomp
        case p_pty
            when "D"
                p_party = "Democrat"
            when "G"
                p_party = "Green"
            when "I"
                p_party = "Independent"
            when "R"
                p_party = "Republican"
            else
                p_party = p_pty
        end
        #
        politician = Politician.new(p_name, p_party)
        puts "Your politician is: #{politician.name} / #{politician.party} of class: #{politician.class}"
        politician_records.add_politician(politician)
#         puts "Politician List is of class: #{voter_records.class}"
    end # end choice_1
    
    puts " \n"
    puts "These are the CURRENT Politician and Voter registry contents:"
    PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)
    puts " \n"

end # end of simulation_loop

puts "---------------------------------------------------------------"
puts "These are the final Politician and Voter registry contents:"
PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

# PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

# close our World
puts " "
puts "**************************"
puts "  Thank you!  Good Night"
puts "**************************"
puts " "






    