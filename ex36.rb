=begin
print figure 
*
**
***
****
*****
=end

def print_logo1()
  i = 1
  x = "x"
  (1..5).each do
    i.times {print x}
        i += 1
    print "\n"
  end
end

=begin
print figure
*****
****
***
**
*
=end
def print_logo2()
  i = -5
  x = "x"
  (-5..-1).each do
    i.abs.times {print x}
        i += 1
    print "\n"
  end
end

=begin
using .each to print
*ooo
**oo
***o
=end
def print_logo3()
  i = 1; l = -3
  x = "x"; y = "o"
  (1..3).zip(-3..-1).each do
    i.times {print x}
    l.abs.times {print y}
    print "\n"
    i += 1; l += 1
  end
end

=begin
using for loop to print
*ooo
**oo
***o
=end
def print_logo4()
  i = 1
  l = -3
  x = "x"
  y = "o"
  for i, j in (1..3).zip(-3..-1)
    i.times {print x} 
    l.abs.times {print y}
    print "\n"
    i += 1
    l += 1
  end
end

def print_logo5()
  i = 3
  x = "x"
  (0..3).each do
    i.abs.times {print x}
    print "\n"
    i = i-2
  end
end



print_logo()

