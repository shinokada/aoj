require '0038'

describe 'poker_hand method' do
  it 'should return one pair' do
    poker_hand([1,2,3,4,1]).should == 'one pair'
  end
  it 'should return two pair' do
    poker_hand([2,3,2,3,12]).should == 'two pair'
  end
  it 'should return three card' do
    poker_hand([12,13,11,12,12]).should == 'three card'
  end
  it 'should return full house' do
    poker_hand([7,6,7,6,7]).should == 'full house'
  end
  it 'should return four card' do
    poker_hand([3,3,2,3,3]).should == 'four card'
  end
  it 'should return straight' do
    poker_hand([6,7,8,9,10]).should == 'straight'
  end
  it 'should return straight' do
    poker_hand([11,12,10,1,13]).should == 'straight'
  end
  it 'should return null' do
    poker_hand([11,12,13,1,2]).should == 'null'
  end
end



