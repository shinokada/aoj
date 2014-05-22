require '0032'

describe 'plasticboard method' do
  it 'should return [1, 2]' do
    plasticboard([[3, 4, 5], [5, 5, 8], [4, 4, 4], [5, 4, 3]]).should == [1, 2]
  end
end
