class Country
    @@all = [] 
    def initialize (attributes)
        attributes.each do |key, value|
            self.class.attr_accessor key
            self.send("#{key}=", value)
        end

        self.class.all << self
    end

    def self.all
        @@all
    end

    def print_countries
        all.each.with_index {|country, i| puts "#{i}. #{country.name} - #{country.temp}"} 
    end
end