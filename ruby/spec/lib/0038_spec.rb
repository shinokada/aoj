require '0038'

describe 'pokerHand method' do
  it 'should return one pair' do
    pokerHand([1,2,3,4,1]).should == 'one pair'
  end
  it 'should return two pair' do
    pokerHand([2,3,2,3,12]).should == 'two pair'
  end
  it 'should return three card' do
    pokerHand([12,13,11,12,12]).should == 'three card'
  end
  it 'should return full house' do
    pokerHand([7,6,7,6,7]).should == 'full house'
  end
  it 'should return four card' do
    pokerHand([3,3,2,3,3]).should == 'four card'
  end
  it 'should return straight' do
    pokerHand([6,7,8,9,10]).should == 'straight'
  end
  it 'should return straight' do
    pokerHand([11,12,10,1,13]).should == 'straight'
  end
  it 'should return null' do
    pokerHand([11,12,13,1,2]).should == 'null'
  end
end



