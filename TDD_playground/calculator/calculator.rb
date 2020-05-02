class Calculator
    
    def operation(number1, operation, number2)
        case operation
            when "+" then  number1.to_f + number2.to_f
            when "-" then  number1.to_f - number2.to_f 
            when "*" then  number1.to_f * number2.to_f
            when "/" then  number1.to_f / number2.to_f           
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
                num_op.slice!(index,2)
                break
            end
        end
        num_op[0].to_f
    end
end
