require '0028a'

describe 'modevalue method' do
  it 'should return mode values of a sequence' do
    modevalue([5,6,3,5,8,7,5,3,9,7,3,4]).should ==  [5, 3]
  end
end
