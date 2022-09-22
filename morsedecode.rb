def decode_morse(morse_char)
  morse_code = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8', '----.' => '9',
    '-----' => '0', '.-.-.-' => '.', '--..--' => ',', '..--..' => '?', '-.-.--' => '!',
    '-..-.' => '/', '-.--.' => '(', '-.--.-' => ')', '.-...' => '&', '---...' => ':',
    '-.-.-.' => ';', '-...-' => '=', '.-.-.' => '+', '-....-' => '-', '..--.-' => '_',
    '.-..-.' => '"', '...-..-' => '$', '.--.-.' => '@', ' ' => ' '
  }
  morse_code[morse_char]
end

# function to split the word
def word_decode(word)
  pattern = ' '
  word.split(pattern).map { |char| decode_morse(char) }.join
end

# split sentence and decode each word
def sentence_decode(sentence)
  sentence.split('  ').map { |word| word_decode(word) }.join(' ')
end

# decode character

puts decode_morse('....') # H
puts decode_morse('.-') # A

# decode word

puts word_decode('.... . .-.. .-.. ---') # HELLO
puts word_decode('-- -.--')

# decode sentence
puts sentence_decode('-- -.--   -. .- -- .') # MY NAME
puts sentence_decode('.... . -.--   .--- --- ... . .--. ....') # HEY JOSEPH.
puts sentence_decode('.-. ..- -... -.--  .. ...  - .... .  .-. . .- .-..  -.. . .- .-.. -.-.--') # Ruby is the real deal!

puts sentence_decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...') # A BOX FULL OF RUBIES
