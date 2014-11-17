# require 'pry'
def uniques(input)

order = []
# input = '1,1,1,2,2,3,3,4,4'
input = input.split(',')

while input != []
x = input.shift
order << x
input.delete(x)
end
input = order.join(',')
# binding.pry


end
