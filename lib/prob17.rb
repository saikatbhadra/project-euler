# Number letter counts
# Problem 17

ONES_TEENS = %W(zero one two three four five six seven eight nine ten
  eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
TENS = %W(nil nil twenty thirty forty fifty sixty seventy eighty ninety)

def num_to_word(num)
  word = ""
  if num < 20
    word << ONES_TEENS[num]
  elsif num < 100
    tens = num / 10 % 10
    remainder = num - 10 * tens
    if remainder > 0
      word << TENS[tens] + " " + num_to_word(remainder)
    else
      word << TENS[tens]
    end
  elsif num < 1000
    hundreds = num / 100 % 10
    remainder = num - 100 * hundreds
    if remainder > 0
      word << ONES_TEENS[hundreds] + " hundred" + " and " + num_to_word(remainder)
    else
      word << ONES_TEENS[hundreds] + " hundred"
    end
  elsif num == 1000
    word << "one thousand"
  end

  word
end

def only_alphanumeric(string)
  string.gsub(/\W/,'')
end

p (1..1000).to_a.map { |n| num_to_word(n).gsub(/\W/,'').length }.reduce(0,:+)

