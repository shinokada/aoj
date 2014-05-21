require '0029'

describe 'english method' do
  it 'should returen most frequent word and the longest word' do
    english('Thank you for your mail and your lectures').should == ['your', 'lectures']
    english('This this and and longest and word.').should == ['and', 'longest']
  end
end
