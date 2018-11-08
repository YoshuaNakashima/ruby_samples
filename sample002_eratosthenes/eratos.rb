require 'complex'

class Eratosthenes
  def self.less_than(max)
    nmax = int_or_nil(max)
    if nmax.nil?
      return "引数は、全て整数のみ入力してください。"
    end
    # step1
    header = 2
    search = [*2..nmax]
    primes = []
    #step2 and 3
    limit = Math.sqrt(nmax)
    while (header <= limit)
      search = search.select{ |i| 0 != i % header }
      primes.push(header)
      header = search.first
    end
    #step4
    primes.concat(search)
    return primes.join(", ")
  end

  def self.int_or_nil(a)
    /(?<na>\d+)/ =~ a.to_s()
    return na == nil ? nil : na.to_i()
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Eratosthenes.less_than(ARGV[0])
end