class Scraper
    BASE_URL = "https://en.wikipedia.org"
    STARTING_URL = "https://en.wikipedia.org/wiki/List_of_countries_by_average_yearly_temperature"

    def get_page(url)
        uri = URI.parse(url)
        Nokogiri::HTML(uri.open)
    end

    def get_countries
        doc = get_page(STARTING_URL)

        element = doc.css('.wikitable')
        items = element.css('tr')
        items.each do |item| 
            name = item.css('a').text.strip
            #p name
            temp = item.css('td')[1].text
            p temp
            #url = item.css('a').attr('href')['value']
            #p url
            # .map{ |node| node.attribute('value')}
            #p url = url.attr("href")
            #p url

            #url = url.include?("https") ? url : "#{BASE_URL}#{url}"

            Country.new({name: name, temp: temp})
        end
    end
end