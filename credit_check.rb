class CreditCheck

  def initialize
  end

  def card_number
    card_number = "4929735477250543"
  end

  def new_number
    new_number = card_number.reverse.split("")
    new_number = new_number.map{ |num| num.to_i }
  end

  def valid_message
    valid = true
    p "This number #{card_number} is valid!"
  end

  def invalid_message
    valid = false
    p "This number #{card_number} is invalid!"
  end

  def evens
    evens = []
    new_number.each_with_index do |item, index|
      if index % 2 == 0
        evens << item
      end
    end
    evens = evens
  end

  def odds
    odds = []
    new_number.each_with_index do |item, index|
      if index % 2 != 0
        odds << item
      end
    end
    odds = odds
  end

  def doubled
    doubled = []
    odds.each do |num|
      num = num * 2
      doubled << num
    end
    doubled = doubled
  end

  def total
    to_string = doubled.join
    total = to_string.split("")
    total = total.map{ |num| num.to_i }
  end

  def sum
    sum_evens = (evens.inject(:+))
    sums_odds = (total.inject(:+))
    sum = sum_evens + sums_odds
  end

  def luhn
    if sum % 10 == 0
      valid_message
    else
      invalid_message
    end
  end
end

number = CreditCheck.new
number.luhn

# List of Valid Numbers Tested:
#    - 4929735477250543 (Answer)
#    - 79927398713 (Account Number, from example)
#    - 5541808923795240
#    - 4024007136512380
#    - 6011797668867828
#    - 342804633855673 (American Express)

# List of Invalid Numbers Tested:
#    - 5541801923795240
#    - 4024007106512380
#    - 6011797668868728
#    - 342801633855673 (American Express)
