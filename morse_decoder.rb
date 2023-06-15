# Morse Code dictionary
MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
  '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
  '----.' => '9'
}
  
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

puts decode_char('.-')

def decode_word(morse_word)
  morse_word.split.map { |char| decode_char(char) }.join
end

puts decode_word('-- -.--')

def decode(morse_code)
  morse_code.split('   ').map { |word| decode_word(word) }.join(' ')
end

 # Use the 'decode' function to decode the message
 puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')