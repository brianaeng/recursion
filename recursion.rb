
# [Panopto at 2:50](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff)
def factorial(n)
  if n == 1 || n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

def reverse(str)
    if str.length == 0
      return ""
    else
      return str[-1] + reverse(str[0..-2])
    end
end

def bunny(n)
  if n == 0
    return 0
  else
    2 + bunny(n-1)
  end
end

def nested(str)
  if str.length == 0
    return true
  elsif str[0] + str[-1] == "()"
    return nested(str[1..-2])
  else
    return false
  end
end

def fib(n)
  if n == 0 || n == 1
    return n
  else
    fib(n-1) + fib(n-2)
  end
end

def pal(s)
  if s == nil || s.length == 1
    return true
  elsif s[0].upcase == s[-1].upcase
    return pal(s[1..-2])
  else
    return false
  end
end

# Factorial Tests
raise "factorial broke - factorial(4)" unless factorial(4) == 24
raise "factorial broke - factorial(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests
raise "reverse broke - reverse('hello')" unless reverse("hello") == "olleh"
raise "reverse broke - reverse('a b c')" unless reverse("a b c") == "c b a"
puts "passes all reverse tests"

# Bunny Tests
raise "bunny broke - bunny(0)" unless bunny(0) == 0
raise "bunny broke - bunny(10)" unless bunny(10) == 20
puts "passes all bunny tests"

# Nested Tests
raise "nested broke - nested('((()))')" unless nested("((()))") == true
raise "nested broke - nested('())')" unless nested("())") == false
puts "passes all nested tests"

puts "All test passed"
