require '0030'

describe 'sumofint method' do
  it 'should return 3' do
    sumofint([3, 6]).should == 3
  end
  it 'should return 0' do
    sumofint([3, 1]).should == 0
  end
end
