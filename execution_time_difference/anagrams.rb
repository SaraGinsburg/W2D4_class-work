require 'byebug'

def first_anagram(str1, str2) # n!

  str1.split("").permutation.include?(str2.chars)
end


def second_anagram(str1, str2) # n^2
  return false if str1.length != str2.length
  chars_array = str1.chars
  arr1 = str1.chars
  arr2 = str2.chars

  chars_array.each do |el|
    arr1.delete(el)
    arr2.delete(el)
  end

  arr1.empty? && arr2.empty?
end

def third_anagram(str1, str2) # nlog(n)
  str1.chars.sort == str2.chars.sort
end

def fourth_anagram(str1, str2) # n?
  str1_hash = Hash.new(0)
  str2_hash = Hash.new(0)

  str1.chars.each do |char|
    str1_hash[char] += 1
  end
  str2.chars.each do |char|
    str2_hash[char] += 1
  end

  str1_hash == str2_hash
end

p first_anagram("gizmo", "sally")
p first_anagram("elvis", "lives")
p "-----"
p second_anagram("gizmo", "sally")
p second_anagram("elvis", "lives")
p "-----"
p third_anagram("gizmo", "sally")
p third_anagram("elvis", "lives")
p "-----"
p fourth_anagram("gizmo", "sally")
p fourth_anagram("elvis", "lives")
