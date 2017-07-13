require 'byebug'

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def smallest_n2(list)
  list.each_with_index do |l1,i1|
    smallest = true

    list.each_with_index do |l2,i2|
      next if i1 == i2
      smallest = false if l2 < l1
    end

    return l1 if smallest
  end

end

def smallest_n(list)
  min = list[0]
  list.drop(1).each do |el|
    min = el if el < min
  end
  min
end

def contiguous_sum_n2?(arr)
  subs = []
  arr.length.times do |start_i|
    (start_i...arr.length).each do |end_i|
      subs << arr[start_i..end_i]
    end
  end
  subs.map {|s| s.reduce(:+)}.max
end

def contiguous_sum_n(arr)
  max_sum = arr[0]
  cur_sum = max_sum

  arr.drop(1).each do |el|
    cur_sum += el # 7
    if cur_sum > max_sum
      max_sum = cur_sum
    else
      cur_sum = 0 if cur_sum < 0
    end
  end

  max_sum
end
