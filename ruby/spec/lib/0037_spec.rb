require '0037'

describe 'path_on_grid method' do
  it 'should return RRRRDDDDLLLUUURRDDLURULLDDDRRRUUUULLLL' do
    path_on_grid([[1, 1, 1, 1],[0, 0, 0, 0, 1],[0, 1, 1, 0],[0, 1, 0, 1, 1],[0, 0, 1, 0],[0, 1, 1, 1, 1],[0, 0, 1,0],[0, 1, 0, 0, 1],[0, 1, 1, 1]]).should == 'RRRRDDDDLLLUUURRDDLURULLDDDRRRUUUULLLL'
  end
end

