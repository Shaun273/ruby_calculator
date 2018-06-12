user_msg = "This is a Calculator%Here are the options:%1: Basic Calculator%2: Advanced%3: BMI calculator%4: Trip calculator"


def Calculator
  get_calc_type


end

def get_calc_type
 puts user_msg
 return type = gets.chomp
end

def check_input test_val, *valid_vals
  
  if valid_vals.Class != Array
    puts "Error: check_input function requires valid values to be in an array"
    return false
  else
    length = valid_vals.length
    if length > 2
      valid_vals.each do |value|
        if test_val == value
          return true
        end
      end
      return false
    elsif length == 2 && valid_vals[0].Class == Array
      if test_val <= valid_vals[1] && test_val >= valid_vals[0]
        return true

      else
        return false
      end
    end
  end

end
