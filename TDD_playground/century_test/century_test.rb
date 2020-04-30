class CenturyTest
    def self.century(year)
        unless year.is_a?(Integer) 
            raise ArgumentError, "only integers"
        end
        century_num = (year + 99) / 100
        ending = "th"
        case century_num.digits[0]
        when 1
            ending = "st"
        when 2
            ending = "nd"
        when 3
            ending = "rd"
        end
        if century_num.digits[1] == 1
            ending = "th"
        end
        return "#{century_num}" + ending
    end
end