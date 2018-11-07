require File.expand_path('lib/triangle')

describe Triangle do

  # コマンドライン引数は、すべて文字列だそうです。
  specify { expect(Triangle.check("a,", "3,", "4")).to eq "引数は、全て整数のみ入力してください。" }
  specify { expect(Triangle.check("2,", "a,", "4")).to eq "引数は、全て整数のみ入力してください。" }
  specify { expect(Triangle.check("2,", "3,", "a")).to eq "引数は、全て整数のみ入力してください。" }
  specify { expect(Triangle.check("2,", "3,", "4")).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.check("2,", "2,", "1")).to eq "二辺三角形ですね！" }
  specify { expect(Triangle.check("1,", "1,", "1")).to eq "正三角形ですね！" }
  specify { expect(Triangle.check("1,", "2,", "3")).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.check(2, 3, 4)).to eq "不等辺三角形ですね！" }
  specify { expect(Triangle.check(2, 2, 1)).to eq "二辺三角形ですね！" }
  specify { expect(Triangle.check(1, 1, 1)).to eq "正三角形ですね！" }
  specify { expect(Triangle.check(1, 2, 3)).to eq "三角形じゃないです＞＜" }

  specify { expect(Triangle.triangle?(1, 1, 1)).to eq true }
  specify { expect(Triangle.triangle?(2, 3, 4)).to eq true }
  specify { expect(Triangle.triangle?(1, 2, 3)).to eq false }
  specify { expect(Triangle.triangle?("2", "3", "4")).to eq false }

  specify { expect(Triangle.isosceles?(2, 2, 1)).to eq true }
  specify { expect(Triangle.isosceles?(2, 3, 4)).to eq false }
  specify { expect(Triangle.isosceles?(2, 2, 2)).to eq false }
  specify { expect(Triangle.isosceles?("2", "3", "4")).to eq false }

  specify { expect(Triangle.equilateral?(2, 2, 2)).to eq true }
  specify { expect(Triangle.equilateral?(2, 3, 4)).to eq false }
  specify { expect(Triangle.equilateral?(2, 2, 1)).to eq false }
  specify { expect(Triangle.equilateral?("2", "3", "4")).to eq false }

  specify { expect(Triangle.triangle?( 3,  4,  5)).to eq true }
  specify { expect(Triangle.triangle?( 5, 12, 13)).to eq true }
  specify { expect(Triangle.triangle?( 7, 24, 25)).to eq true }
  specify { expect(Triangle.triangle?( 9, 40, 41)).to eq true }
  specify { expect(Triangle.triangle?(11, 60, 61)).to eq true }
  specify { expect(Triangle.triangle?(13, 84, 85)).to eq true }
  specify { expect(Triangle.triangle?(15,  8, 17)).to eq true }
  specify { expect(Triangle.triangle?(15,112,113)).to eq true }
  specify { expect(Triangle.triangle?(17,144,145)).to eq true }
  specify { expect(Triangle.triangle?(19,180,181)).to eq true }
  specify { expect(Triangle.triangle?(21, 20, 29)).to eq true }
  specify { expect(Triangle.triangle?(27, 36, 45)).to eq true }
  specify { expect(Triangle.triangle?(33, 56, 65)).to eq true }
  specify { expect(Triangle.triangle?(35, 12, 37)).to eq true }
  specify { expect(Triangle.triangle?(39, 80, 89)).to eq true }
  specify { expect(Triangle.triangle?(45, 28, 53)).to eq true }
  specify { expect(Triangle.triangle?(45,108,117)).to eq true }
  specify { expect(Triangle.triangle?(51,140,149)).to eq true }
  specify { expect(Triangle.triangle?(55, 48, 73)).to eq true }
  specify { expect(Triangle.triangle?(63, 16, 65)).to eq true }
  specify { expect(Triangle.triangle?(65, 72, 97)).to eq true }
  specify { expect(Triangle.triangle?(75,100,125)).to eq true }
  specify { expect(Triangle.triangle?(77, 36, 85)).to eq true }
  specify { expect(Triangle.triangle?(91, 60,109)).to eq true }
  specify { expect(Triangle.triangle?(99, 20,101)).to eq true }  
end