require '0033'

describe 'ball method' do
  it 'should return ["yes", "no"]' do
    ball([[2], [3,1,4,2,5,6,7,8,9,10], [10,9,8,7,6,5,4,3,2,1]]).should == ['yes', 'no']
  end
end
