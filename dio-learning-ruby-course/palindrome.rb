# Its a palindrome? 

def palindrome(string)
  puts string == string.reverse ? "it's a palindrome" : "isn't a palindrome"
end

puts "Digite a palavra que deseja conferir se é palindromo: "
string = gets.chomp
palindrome(string)
