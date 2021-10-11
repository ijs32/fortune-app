class MyExamplesController < ApplicationController
  def fortunes
    array = [
      "you will soon be met with great success.",
      "friends are worth more than money!",
      "today is a good day to spend with family",
    ]
    render html: array.sample
  end

  def lotto_nums
    array = (1..60).to_a
    lotto_nums = []
    6.times do
      lotto_nums << array.sample
    end
    render html: "your winning lottery numbers are: #{lotto_nums}"
  end

  def b_o_b
    i = 100
    array = []
    while i >= 0
      if i > 0
        array << "#{i} bottles of beer on the wall, #{i} bottles of beer"
        array << "take one down pass it around, #{(i - 1)} bottles of beer on the wall"
      elsif i == 0
        array << "0 bottles of beer on the wall, 0 bottles of beer"
        array << "go to the store and get some more, 99 bottles of beer on the wall"
      end
      i -= 1
    end
    song = array.join(" ")
    render html: song
  end
end
