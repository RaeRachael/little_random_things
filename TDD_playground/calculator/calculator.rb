class Calculator
    
    def operation(number1, operation, number2)
        case operation
        when "+"
            return number1.to_i + number2.to_i
        when "-"
            return number1.to_i - number2.to_i 
        when "*"
            return number1.to_i * number2.to_i
        when "/"
            return number1.to_i / number2.to_i           
        end
    end
    
    def evaluate(input)
        num_op = input.split(" ")
        ans = num_op[0].to_i if num_op.length == 1
        ans = operation(num_op[0],num_op[1],num_op[2]) if num_op.length == 3
        ans
    end
end
