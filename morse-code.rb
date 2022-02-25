DATA = [["A", ".-"], ["B","-..."], ["C","-.-."], ["D","-.."], ["E","."],["F","..-."],["G","--."],
["H","...."],["I",".."],["J",".---"],["K","-.-"], ["L",".-.."],["M","--"],["N","-."],["O","---"],
["P",".--."],["Q","--.-"],["R",".-."],["S","..."],["T","-"], ["U","..-"],["V","...-"],["W",".--"],["X", "-..-"],["Y","-.--"],["Z","--.."]]


def decode_char(args)
ans = ''
DATA.each_with_index {
  |n, idx| 
  if n[1] == args
    ans = n[0] 
    break
  end
}
return ans
end

puts decode_char("-..-")
def decode_word(args)
  answer = ''
  ans = args.split(/ /)
  ans.each{
    |n| 
    answer += decode_char(n)
  }
  return answer
end

puts decode_word("-- -.--")

def decode(args) 
  answer = '' 
  ans = args.split(/ /) 
  ans.each{ 
    |n| answer = answer + decode_word(n) + " " 
  } 
  return answer 
end 
puts decode(".- -... --- -..- ..-. ..- .-.. .-.. --- ..-. / .-. ..- -... .. . ...") 
puts decode("-- -.-- -. .- -- .") 
