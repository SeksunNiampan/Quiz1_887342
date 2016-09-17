require 'prime'

def prime_hash(n)
    pHash = Hash.new
    aHash = Prime.first(n)
    
    n.times do |n|
        c = n + 1
        s = "p"+c.to_s
        s = s.to_sym
        pHash[s] = aHash[c-1]
        n = c
    end
    
    return pHash
    

end

xx = prime_hash(6)

puts xx