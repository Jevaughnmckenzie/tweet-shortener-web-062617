require 'pry'

# Write your code here.

def dictionary

  {
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter(tweet)

  tweet_array = tweet.split(" ")

  new_tweet_array = tweet_array.map do |word|

                      if dictionary.keys.include?(word.downcase)

                        word = dictionary[word.downcase]
                      else

                        word = word

                      end

                    end
  new_tweet_array.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)

  array_of_tweets.each { |tweet| puts word_substituter(tweet)}

end

def selective_tweet_shortener(tweet)

  max_tweet_length = 140

  if (tweet.length > max_tweet_length)

    word_substituter(tweet)
  else

    tweet

  end

end

def shortened_tweet_truncator(tweet)

max_tweet_length = 140

  if (tweet.length > max_tweet_length)

    tweet = "#{tweet[0..136]}..."

  else

    tweet

  end
 # binding.pry
end

# shortened_tweet_truncator("GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!")
