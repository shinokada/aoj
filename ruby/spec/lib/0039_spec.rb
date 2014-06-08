require '0039'

describe 'to_arabic method' do
  it 'should return Arabic number 4' do
    to_arabic('IV').should == 4
  end
  it 'should return Arabic number 499' do
    to_arabic('CCCCLXXXXVIIII').should == 499
  end
  it 'should return Arabic number 499' do
    to_arabic('CDXCIX').should == 499
  end
end

