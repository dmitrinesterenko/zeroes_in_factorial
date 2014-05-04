#def zeros(n)
#  return 0 if n <= 4
#  arrn = 1.upto(n).inject(:*).to_s.split(//)
#  x = -1
#  until arrn[x] != 0
#	  zs = []
#	  zs << x
#	  x -= x
#  end
#  arrn.length
#end

def factorial(n)
    arrn = 1.upto(n).inject(:*)
    arrn
end


#puts it.to_s.length

# Refactored
def zeros(n)
  return 0 if n <= 4
  match = 1.upto(n).inject(:*).to_s.reverse.match(/0+/)
  match[0].size
end
start_time = Time.now
#it = factorial(200000)
puts zeros(200000)
end_time = Time.now
puts "#{end_time-start_time}"
