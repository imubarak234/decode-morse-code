def decode_char(args)
  ans = ''
  morse_data = [['A', '.-'], ['B', '-...'], ['C', '-.-.'], ['D', '-..'],
                ['E', '.'], ['F', '..-.'], ['G', '--.'],
                ['H', '....'], ['I', '..'], ['J', '.---'],
                ['K', '-.-'], ['L', '.-..'], ['M', '--'],
                ['N', '-.'], ['O', '---'],
                ['P', '.--.'], ['Q', '--.-'], ['R', '.-.'],
                ['S', '...'], ['T', '-'], ['U', '..-'],
                ['V', '...-'], ['W', '.--'], ['X', '-..-'], ['Y', '-.--'],
                ['Z', '--..']].freeze
  morse_data.each_with_index do |n, _idx|
    if n[1] == args
      ans = n[0]
      break
    end
  end
  ans
end

puts decode_char('-..-')
def decode_word(args)
  answer = ''
  ans = args.split(/ /)
  ans.each do |n|
    answer += decode_char(n)
  end
  answer
end

puts decode_word('-- -.--')

def decode(args)
  answer = ''
  ans = args.split(/ /)
  ans.each do |n|
    answer = "#{answer}#{decode_word(n)} "
  end
  answer
end
puts decode('.- -... --- -..- ..-. ..- .-.. .-.. --- ..-. / .-. ..- -... .. . ...')
puts decode('-- -.-- -. .- -- .')
