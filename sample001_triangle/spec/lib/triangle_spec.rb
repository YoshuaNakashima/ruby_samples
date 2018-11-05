require File.expand_path('lib/triangle')

describe Triangle do
  specify { expect(Triangle.check()).to eq true }
end