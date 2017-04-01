class Owner
    def name
        name = 'Foobar Kadigan'
    end

    def birthdate
        birthdate = Date.new(1990, 12, 22)
    end
    
    def countdown
        Rails.logger.debug 'DEBUG: entering Owner countdown method'
        Rails.logger.debug "\033[1;34;40m[DEBUG]\033[0m " + 'will appear in bold blue'
        today = Date.today
        birthday = Date.new(today.year, birthdate.month, birthdate.day)
        if birthday > today
            countdown = (birthday - today).to_i
        else
            countdown = (birthday.next_year - today).to_i
        end
    end
end