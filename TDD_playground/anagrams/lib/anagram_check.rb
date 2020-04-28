class String
    def anagram_check(str)
        if str.is_a?(String) == false
            raise RuntimeError, 'Needs to be a String'
        end
        puts "#{self.gsub(/[^a-zA-Z]/,'')}"
        self.gsub(/[^a-zA-Z]/,'').downcase.split('').sort == str.gsub(/[^a-zA-Z]/,'').downcase.split('').sort
    end
end