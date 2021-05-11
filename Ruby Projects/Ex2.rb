cnt = 0
for i in (0..1000)
    if i % 3 == 0 or i % 5 == 0
        cnt += i
    end
end
puts cnt

def fib(n)
    if n == 0 or n == 1 or n == 2
        return 0
    elsif n == 3
        return 1
    else
        return fib(n-1) + fib(n-2) + fib(n-3)
    end
end
puts fib 3

count = 0
for i in (0..20)
    if i % 2 == 0
        count += fib(i)
    end
end
puts count

def divisors(n)
    divisors = []
    for i in 1...n
      divisors.push(i) if n % i == 0
    end
    divisors
end
a = divisors 50
print a

r = "How are each of us like them"
puts r.split.each{|i| i.capitalize!}.join(" ")

def counts(input_str)
    count = 0
    inp = input_str.split("")
    for i in inp
        if i == 'a' or i == 'e' or i == 'i' or i == 'o' or i == 'u'
            count += 1
        else
            count += 0
        end
    end
    print count
end
counts('abracadabra')

def arrr(arr)
    arr.join("").to_i(2)
end
print arrr [1,0,0]

def dtob(arr)
    if arr <= 1
        arr.to_s
    else
        dtob(arr / 2) + (arr % 2).to_s
    end
end
print dtob(100)

print [999,0,5,4,98,655].sort!

def g(x)
    x.delete(' ')
end
print g(' 0 00 0 0 00 0')

def nifni(n)
    n.downcase!
    spword = n.split("")
    counts = Hash.new(0)
    spword.each { |element| counts[element] += 1}
    spword.collect! {|x| counts[x] > 1 ? ")" : "("}.join
end
print nifni('din')