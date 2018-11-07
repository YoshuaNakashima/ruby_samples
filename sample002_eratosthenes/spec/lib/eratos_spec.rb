require File.expand_path('eratos')

describe Eratosthenes do

  specify { expect(Eratosthenes.less_than("30")).to eq "2, 3, 5, 7, 11, 13, 17, 19, 23, 29" }

end