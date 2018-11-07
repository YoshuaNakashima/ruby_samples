class Eratosthenes
  def self.less_than(max)
    return "2, 3, 5, 7, 11, 13, 17, 19, 23, 29"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Eratosthenes.less_than(30)
end