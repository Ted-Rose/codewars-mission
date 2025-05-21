def get_score(arr)
  current_level = 0
  points = 0
  cleared_lines = 0
  arr.each do | line |
    next if line == 0
    cleared_lines += line

    points = get_points(line, current_level, points)

    if cleared_lines >= 10
      current_level += 1
      cleared_lines = 0
    end
  end

  points
end

def get_points(line, current_level, points)
  level_multiplier = current_level + 1
  if current_level == 0
    level_multiplier = 1
  end

  first_step = 40
  second_step = 100
  third_step = 300
  forth_step = 1200

  case line
  when 1
    points += level_multiplier * first_step
  when 2
    points += level_multiplier * second_step
  when 3
    points += level_multiplier * third_step
  when 4
    points += level_multiplier * forth_step
  end
end

puts get_score([0, 1, 2, 3, 4])
