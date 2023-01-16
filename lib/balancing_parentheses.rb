require_relative './stack'

# your code here

def balancing_parentheses(string)
    value = 0
    newStack = Stack.new 

    left = '('
    right = ')'

    string.each_char do |ch|
        if left == ch
            newStack.push(ch)
        elsif right == ch
            ch == newStack.peek ? newStack.pop : value+=1
        end 
    end 

    value

end 

    #newStack.push(string)
    
    #while newStack.size > 0 do 
        
    #    if newStack.pop == '('
    #        left += 1
    #    elsif newStack.pop == ')'
    #        right += 1
    #    end

    #end