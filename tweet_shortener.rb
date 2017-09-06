# Write your code here.
def dictionary
  {"hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@",
    "and" => "&",
}
end

def word_substituter(tweet)
  keys_list = dictionary.keys
  tweet_array = tweet.split(" ")
  tweet_array.each.with_index {|word, index|
    if keys_list.include?(word)
      tweet_array[index] = dictionary[word]
    end
  }
  tweet_array.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet|
    puts word_substituter(tweet)
  }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = word_substituter(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0..134] << "(...)"
  else
    tweet
  end
end
