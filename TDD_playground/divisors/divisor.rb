
def divisor(num)
    ans=[]
    2.upto(num-1) { |i| ans << i if num%i == 0 }
    return "#{num} is a prime" if ans == []
    ans
end
