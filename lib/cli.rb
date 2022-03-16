require_relative '../config/environment.rb'

class CLI

    def initialize
        Scraper.new.get_countries
    end
    
    def start
        puts "Welcome to the travel app"
        puts "Do you want to go on a holiday? Type [y]es or any character to exit."
        
        start_response
    end

    def start_response
        response = gets.strip

        if response.downcase == "y"
            temp_question
        else 
            system("exit")
        end
    end

    def temp_question
        puts "Select your prefered temperate range:"
        puts "1. Very cold."
        puts "2. Cold"
        puts "3. Cool"
        puts "4. Warm"
        puts "5. Hot"
        puts "6. Very hot."

        show_countries_by_temp
    end

    def show_countries_by_temp
        #using a case statement ??
        
    end
end