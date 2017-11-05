# 
# This the World in which we are maintaining
# Voter and Politician registrations lists.
#
require './person.rb'
require './voter.rb'
require './politician.rb'
require './records.rb'

require './world_setup.rb'
require './world_methods.rb'
# require './print_lists.rb'
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

puts "As part of the registries set-up, we added sample members:"
puts "#{politician_records.list_politicians}#{voter_records.list_voters}"

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

    if ["A", "a"].include? choice_2
        choice_2 = "A"
    elsif ["U", "u"].include? choice_2 
            choice_2 = "U"
       elsif ["D", "d"].include? choice_2 
               choice_2 = "D"  
          else  # default to add a voter
               choice_2 = "A"
          end

    puts "You chose: #{choice_2}"

    # Now in here we need to prompt for adding either a voter or politician
    if choice_1 == "1"
       # this is a voter
       case 
         when choice_2 == "A"
              # Now in here we need to prompt for adding a voter:
               puts " "
               puts "Please type the full name of the Voter you wish to add:"
               v_name = gets.chomp
               puts "Voters also need a political affiliation from the following choices:"
               puts "C-Conservative, L-Liberal, N-Neutral, S-Socialist or T-Tea Party"
               puts "Next, please type the Letter for the Voter's political affiliation:"
               v_pol = gets.chomp
               voter_records.create_voter(v_name, WorldMethods.affiliation_title(v_pol))
               #
         when choice_2 == "U"
               # Now in here we need to prompt for updating a voter.
               puts " "
               puts "Please type the full name of the Voter you wish to update:"
               v_name = gets.chomp
               puts "Please type the new name of the Voter you wish to update:"
               v_name_new = gets.chomp
               puts "Now pick your Voter's replacement political affiliation from the following choices:"
               puts "C-Conservative, L-Liberal, N-Neutral, S-Socialist or T-Tea Party"
               puts "Next, please type the Letter for the updated Voter's political affiliation:"
               v_pol = gets.chomp
               voter_records.update_voter(v_name, v_name_new, WorldMethods.affiliation_title(v_pol))
               #
         when choice_2 == "D"
               # Now in here we need to prompt for deleting a voter.
               puts " "
               puts "Please type the full name of the Voter you wish to delete:"
               v_name = gets.chomp
               voter_records.delete_voter(v_name)
               #
         else  puts "Houston we have a problem:  choice_2 was not A, U or D"
       end
    else # Otherwise this is a politician
       case 
         when choice_2 == "A"
               # Now in here we need to prompt for adding a politician:
                puts "Please type the full name of the Politician you wish to add:"
                p_name = gets.chomp
                puts "Politicians also need a political party from the following choices:"
                puts "D-Democrat, G-Green, I-Independent or R-Republican"
                puts "Next, please type the Letter for the Politican's political party:"
                p_pty = gets.chomp
                politician_records.create_politician(p_name, WorldMethods.party_title(p_pty))
                #
         when choice_2 == "U"
               # Now in here we need to prompt for adding a 
                puts "Please type the full name of the Politician you wish to update:"
                p_name = gets.chomp
                puts "Please type the new name of the Politician you wish to update:"
                p_name_new = gets.chomp
                puts "Now pick your Politician's replacement political party from the following choices:"
                puts "D-Democrat, G-Green, I-Independent or R-Republican"
                puts "Next, please type the Letter for the updated Politician's political party:"
                p_pty = gets.chomp
                politician_records.update_politician(p_name, p_name_new, WorldMethods.party_title(p_pty))
                #
         when choice_2 == "D"
               # Now in here we need to prompt for adding a 
                puts "Please type the full name of the Politician you wish to delete:"
                p_name = gets.chomp
                politician_records.delete_politician(p_name)
                # 
         else puts "Houston we have a problem:  choice_2 was not A, U or D"
       end    
        
    end # end choice_1
    
    puts " \n"
    puts "These are the CURRENT Politician and Voter registry contents:"
    puts "#{politician_records.list_politicians}#{voter_records.list_voters}"
    puts " \n"

end # end of simulation_loop

puts "---------------------------------------------------------------"
puts "These are the final Politician and Voter registry contents:"
puts "#{politician_records.list_politicians} #{voter_records.list_voters}"

# PrintLists.print_lists(politician_records.politician_list, voter_records.voter_list)

# close our World
puts " "
puts "**************************"
puts "  Thank you!  Good Night"
puts "**************************"
puts " "

# end of Voter Simulation - Project 3 #