class RandomController < ApplicationController

def generate_activation_code (size = 6)
  charset = %w{ 2 3 4 6 7 9 A C D E F G H J K M N P Q R T V W X Y Z}
  (0...size).map{ charset.to_a[rand(charset.size)] }.join
end


def random_word_and_number( words, max=999 )
  "%s%0#{max.to_s.length}d" % [ words.sample, rand(max+1) ]
end

(1..4).map{ random_word_and_number( %w[ foo bar jim jam ] ) }




puts { randomWord } + { randomWord }
