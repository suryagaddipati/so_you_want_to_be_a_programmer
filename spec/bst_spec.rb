require_relative '../bst.rb'

describe Bst do

  it ".depth" do 
  end

  let(:bst) { Bst.new(10) }
 
  it "inserts more than one element" do 
    bst.insert(25)
    bst.insert(54)
    bst.insert(12)
    bst.insert(6)
    bst.insert(88)
    bst.print
    bst.exists(12).should == true
  end

  it "finds element" do 
    bst.insert(25)
    bst.exists(25).should == true
    bst.exists(54).should == false
  end

  it "inserts into tree" do 
    bst.insert(25)
  end
end
