CODES =
  {
    '.-' => 'a',
    '-...' => 'b',
    '-.-.' => 'c',
    '-..' => 'd',
    '.' => 'e',
    '..-.' => 'f',
    '--.' => 'g',
    '....' => 'h',
    '..' => 'i',
    '.---' => 'j',
    '-.-' => 'k',
    '.-..' => 'l',
    '--' => 'm',
    '-.' => 'n',
    '---' => 'o',
    '.--.' => 'p',
    '--.-' => 'q',
    '.-.' => 'r',
    '...' => 's',
    '-' => 't',
    '..-' => 'u',
    '...-' => 'v',
    '.--' => 'w',
    '-..-' => 'x',
    '-.--' => 'y',
    '--..' => 'z',
    ' ' => ' ',
    '.---- ' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '-----' => '0'
  }.freeze

def decode_character(char)
  CODES[char].upcase
end

def decode_word(word)
  decoded_word = ''
  letters_of_word = word.split
  letters_of_word.each { |n| puts decoded_word += decode_character(n) }
  decoded_word
end

def decode_sentence(sentence)
  decoded_sentence = ''
  words_of_sentence = sentence.split('   ')
  words_of_sentence.each { |n| decoded_sentence += " #{decode_word(n)}" }
  decoded_sentence = decoded_sentence[1..]
end
