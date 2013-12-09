require './todo16.rb'

describe 'couunt' do
  
  it "should return a hash from" do
    count(['cat', 'dog', 'fish', 'fish']).should eq({ 'cat' => 1, 'dog' => 1, 'fish' => 2 })
  end

end


