# Things of note
# https://en.wikipedia.org/wiki/Anonymous_function
# https://en.wikipedia.org/wiki/Closure_(computer_programming)
# https://en.wikipedia.org/wiki/Partial_application

%w[zero one two three four five six seven eight nine].each.with_index do |word, i|
  define_method(word) { |fn = nil| fn ? fn.call(i) : i }
end

def plus(right)
  ->(left) { left + right }
end

def minus(right)
  ->(left) { left - right }
end

def times(right)
  ->(left) { left * right }
end

def divided_by(right)
  ->(left) { left / right }
end
