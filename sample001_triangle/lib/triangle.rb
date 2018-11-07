class Triangle
  def self.check(a, b, c)
    na = int_or_nil(a)
    nb = int_or_nil(b)
    nc = int_or_nil(c)

    if na.nil? || nb.nil? || nc.nil?
      return "引数は、全て整数のみ入力してください。"
    end

    # 判定順序に依存しています。
    if triangle?(na, nb, nc)
      if equilateral?(na, nb, nc)
        return "正三角形ですね！"
      elsif isosceles?(na, nb, nc)
        return "二辺三角形ですね！"
      else
        return "不等辺三角形ですね！"
      end
    else
      return "三角形じゃないです＞＜"
    end
  end

  def self.int_or_nil(a)
    /(?<na>\d+)/ =~ a.to_s()
    return na == nil ? nil : na.to_i()
  end
  def self.equilateral?(a, b, c)
    return a == b && b == c
  end
  def self.isosceles?(a, b, c)
    return (a == b && a != c) || (b == c && b != a) || (c == a && c != b)
  end
  def self.triangle?(a, b, c)
    return a < b + c && b < c + a && c < a + b
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Triangle.check(ARGV[0], ARGV[1], ARGV[2])
end