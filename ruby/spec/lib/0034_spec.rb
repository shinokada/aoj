require '0034'

describe 'railway_lines method' do
  it 'should return 4' do
    railway_lines([1,1,1,1,1,1,1,1,1,1,40,60]).should == 4
  end
  it 'should return 4' do
    railway_lines([1,1,1,1,1,3,3,3,3,3,50,50]).should == 7
  end
  it 'should return 4' do
    railway_lines([10,10,10,10,10,10,10,10,10,10,50,49]).should == 6
  end


end
