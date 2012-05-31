require 'spec_helper'

describe "mess with ID's" do

  before do
    @person = Person.create!
    @id = @person._id.to_s
  end

  it "a String id stays a String id" do
    ids = [@id]
    people = Person.where(:_id.in => ids).to_a
    ids.first.should { be_kind_of String }
  end

end
