require '0012'

describe 'pointTriangle method' do
  it 'should return YES' do
    pointTriangle([0.0, 0.0, 2.0, 0.0, 2.0, 2.0, 1.5, 0.5]).should == 'YES'
  end
  it 'should return NO' do
    pointTriangle([0.0, 0.0, 1.0, 4.0, 5.0, 3.0, -1.0, 3.0]).should == 'NO'
  end
end
