def two_sum?(arr,target)
  pairs = []
  arr.each_with_index do |el1, i1|
    arr.each_with_index do |el2, i2|
      next if i1 == i2
      return true if el1 + el2 == target
    end
  end

  false
end

def sort_two_sum(arr, target)
  arr_sorted = arr.sort
  arr_sorted.each do |el|
    return true if bin_search(arr, target - el)
  end

  false
end

def bin_search(sorted, n)
  return nil if sorted.empty?
  mid = sorted.length / 2
  case n <=> mid
  when -1
    bin_search(sorted.take(mid), n)
  when 0
    mid
  when 1
    sub_i = bin_search(sorted.drop(mid + 1),n)
    sub_i.nil? ? nil : sub_i + mid + 1
  end
end

def hash_two_sum(arr, target)
  hash = Hash.new
  arr.each do |el|
    complement = target - el
    return true if hash.include?(complement)
    hash[el] = true
  end

  false
end

arr = [-1,6,8,3,3,-9,-2,-4,5]
target1 = 99
target2 = 6
target3 = 5

p two_sum?(arr, target1)
p two_sum?(arr, target2)
p two_sum?(arr, target3)
p sort_two_sum(arr, target1)
p sort_two_sum(arr, target2)
p sort_two_sum(arr, target3)
p hash_two_sum(arr, target1)
p hash_two_sum(arr, target2)
p hash_two_sum(arr, target3)
