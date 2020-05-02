class Calculator
    
    def operation(number1, operation, number2)
        case operation
        when "+"
            return number1.to_f + number2.to_f
        when "-"
            return number1.to_f - number2.to_f 
        when "*"
            return number1.to_f * number2.to_f
        when "/"
            return number1.to_f / number2.to_f           
        end
    end
    
    def evaluate(input)
        num_op = input.split(" ")
        until num_op.length ==1
            num_op.each_with_index do |op, index|
                next if index%2 == 0
                if num_op.count("*") > 0 || num_op.count("/") > 0
                    next if op != "*" && op !="/"
                end 
                num_op[index - 1] = operation(num_op[index - 1], op, num_op[index + 1])
                num_op.delete_at(index)
                num_op.delete_at(index)
                puts "#{num_op}"
                break
            end
        end
        num_op[0].to_f
    end
end
