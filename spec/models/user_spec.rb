require 'rails_helper'
require 'spec_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a firstname, lastname, and email" do
    user = User.new(first_name: "Kai", last_name:"Prout", email: "kai@example.com")
    expect(user).to be_valid
  end
  it "is invalid without a firstname" do
    expect(User.new(first_name: nil)).to have(1).errors_on(:first_name)
  end
  it "is invalid without a lastname" do
    expect(User.new(last_name: nil)).to have(1).errors_on(:last_name)
  end
  it "is invalid without an email address" do
    expect(User.new(email: nil)).to have(1).errors_on(:email)
  end
  it "is invalid with a duplicate email address" do
    User.create(first_name: "John", lastname:"Foo",
    email: 'foo@foo.com')
    user = User.new(first_name: "Kai", last_name: "P",
    email: 'foo@foo.com')
    expect(user).to have(1).errors_on(:email)
  end
end
