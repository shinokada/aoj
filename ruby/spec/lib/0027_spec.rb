require '0027a'

describe 'whatday method' do
  it 'should return the day of the date' do
    whatday([1,1]).should == "Thursday"
    whatday([2, 29]).should == "Sunday"
    whatday([0, 0]).should == "end of input"
  end
end

