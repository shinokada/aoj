require '0039'

describe 'toArabic method' do
  it 'should return Arabic number 4' do
    toArabic('IV').should == 4
  end
  it 'should return Arabic number 499' do
    toArabic('CCCCLXXXXVIIII').should == 499
  end
  it 'should return Arabic number 499' do
    toArabic('CDXCIX').should == 499
  end
end

