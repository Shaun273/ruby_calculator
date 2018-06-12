user_msg = "This is a Calculator\nHere are the options:\n1: Basic Calculator\n2: Advanced\n3: BMI calculator\n4: Trip calculator"
pick_op = "Pick your operator: (+,-,/,*)"

def get_number

  return number = gets.chomp
end

def get_calc_type
  puts "This is a Calculator\nHere are the options:\n1: Basic Calculator\n2: Advanced\n3: BMI calculator\n4: Trip calculator"
  return type = gets.chomp
end

def check_input test_val, *valid_vals

  if valid_vals.class != Array
    puts "Error: check_input function requires valid values to be in an array"
    return false
  else
    length = valid_vals.length
    # puts length
    if length == 2 && valid_vals[0].class == Integer
      if test_val <= valid_vals[1] && test_val >= valid_vals[0]
        return true

      else
        return false
      end

    elsif length > 2 && (valid_vals[0].class == Integer || valid_vals[0].class == Float)
      # puts length
      valid_vals.each do |value|
        print test_val
        puts value

        if test_val == value
          puts value
          return true
        end
      end
      return false

    elsif valid_vals[0].class == "String"
      if test_val <= valid_vals[1] && test_val >= valid_vals[0]
        return true

      else
        return false
      end
    end
  end
end

def get_operator
  op = gets.chomp
  until check_input op, "+","-","/","*"
    puts "Invalid Operator"
    puts pick_op
    op = gets.chomp
  end
end

def basic_calc
  puts "Pick your first number:"
  num1 = get_number.to_f
  puts "Pick your second number"
  num2 = get_number.to_f
  puts "Pick your operator: (+,-,/,*)"
  operator = get_operator
  # pu
  case operator
  when "+"
    total = num1 + num2
    puts "#{num1} #{operator} #{num2} =  #{total}"
    num1 = total
  when "-"
    total = num1 - num2
    puts "#{num1} #{operator} #{num2} =  #{total}"
    num1 = total
  when "*"
    total = num1 * num2
    puts "#{num1} #{operator} #{num2} =  #{total}"
    num1 = total
  when "/"
    total = num1 / num2
    puts "#{num1} #{operator} #{num2} =  #{total}"
    num1 = total
  end
end

def advanced_calc num1

  puts "Pick your operator: (+,-,/,*,^,√)"
  operator = get_operator


  case operator
  when "√"
    total = Math.sqrt(num1)
    puts "#{operator}#{num1} = #{total}"
    num1 = total
    advanced_calc
  when "^"
    total = num1
    puts "#{num1}#{operator}2 =  #{total}"
    num1 = total
  end
  puts "Pick your second number"
  num2 = get_number.to_f
end

def bmi_calc

end

def trip_calc

end

def calculator
  puts `clear`
  puts `clear`
  type = get_calc_type
  # if check_input type, 1,2,3,4
    case type
    when 1
      puts type

      basic_calc
    when 2
      puts "Pick your first number:"
      num1 = get_number.to_f
      advanced_calc num1
    when 3
      bmi_calc
    when 4
      trip_calc
    end
  end
# end

calculator
