require 'rspec'

def lm(current_position, target_combinations, max_pos)
  movements = []
  target_combinations.each do |target|
    # clockwise and anticlockwise movements
    # + max_pos to avoid negative values
    # % max_pos to avoid values greater than max_pos
    clockwise = (target - current_position + max_pos) % max_pos
    anticlockwise = (current_position - target + max_pos) % max_pos
    
    min_movements = [clockwise, anticlockwise].min  # choose the minimum of the two movements
    movements << min_movements                      # add to the movements array
    current_position = target                       # update the current position
  end
  movements
end

def tlm(current_position, target_combinations, max_pos)
  lm(current_position, target_combinations, max_pos).sum
end

# Example usage:
def run_test(cp, tc, m, expected)
  res = tlm(cp, tc, m)
  puts "Current Position: #{cp} - Target Combinations: #{tc} - Max Position: #{m}"
  
  puts "Total Movements: #{res}"
  puts "\Test Result: #{expected == res ? "PASSED" : "FAILED"}"
  puts "----------------------------------------\n"
end

def tests
  run_test(3, [1, 3, 8], 8, 7)
  run_test(4, [1, 8, 5, 10], 10, 14)
  run_test(2, [1, 7, 3, 9], 10, 13)
  run_test(4, [1, 14, 4, 7, 12, 15, 3], 15, 24)
  run_test(2, [1, 35, 4, 354, 23, 120], 500, 482)
end

tests
