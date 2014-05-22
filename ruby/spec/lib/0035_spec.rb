require '0035'

describe 'convex? method' do
  it 'should return YES' do
    convex?([0.0, 0.0, 1.0, 0.0, 1.0, 1.0, 0.0, 1.0]).should == 'YES'
  end
end



