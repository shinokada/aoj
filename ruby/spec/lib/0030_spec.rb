require '0030'

describe 'sumofint method' do
  it 'should return the number of combinations where the sum of the digits equals s' do
    sumofint([3, 6]).should == 3
    sumofint([3, 1]).should == 0
  end
end
