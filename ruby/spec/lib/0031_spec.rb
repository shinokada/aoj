require '0031'

describe 'weight method' do
  it 'should return [1, 4]' do
    weight(5).should == [1, 4]
  end
  it 'should return [1,2,4]' do
    weight(7).should == [1,2,4]
  end
  it 'should return [1,2,4,8,16,32,64]' do
    weight(127).should == [1,2,4,8,16,32,64]
  end
end


