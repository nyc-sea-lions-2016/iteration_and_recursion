require 'rspec'
require_relative '../adder_recursive'

VALUES = [
  [2, 3],
  [3, 6]
]
describe "RecursiveAdder" do
  # VALUES.each do |pair|
  #   # it "should add up to #{pair[1]}" do
  #   #   expect(add(0.upto(pair[0]).to_a)).to eq(pair[1])
  #   # end
  # end

  it "should add numbers properly" do
    VALUES.each do |pair|
      expect(add(0.upto(pair[0]).to_a)).to eq(pair[1])
    end
  end

  it "should add up to 3" do
    expect(add(0.upto(3).to_a)).to eq(6)
  end

  it "should add up to 4" do
    expect(add(0.upto(4).to_a)).to eq(10)
  end

  it "should add up to 100" do
    expect(add(0.upto(100).to_a)).to eq(5050)
  end

  it "should add up to 8190" do
    expect { add(0.upto(8190).to_a) }.to raise_exception(SystemStackError)
  end
end

def expect
  begin
    yield if block_given?
    1/0
  rescue SystemStackError
    puts 'Caught div by zero error!!'
  rescue
    puts 'Caught div by zero error!!'
  end
end


# puts add(0.upto(2).to_a) == 3
# puts add(0.upto(10).to_a) == 55
# puts add(0.upto(20).to_a) == 210
# puts add(0.upto(50).to_a) == 1275
# puts add(0.upto(100).to_a) == 5050
# puts add(0.upto(1000).to_a) == 500500
# puts add(0.upto(6000).to_a)
# puts add(0.upto(8000).to_a)
# puts add(0.upto(8189).to_a)
# puts 'here'
# puts add(0.upto(8500).to_a)
# puts add(0.upto(9000).to_a)
# puts add(0.upto(10000).to_a) == 50005000
# puts add(0.upto(100000).to_a) == 5000050000
