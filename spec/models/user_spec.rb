require 'rails_helper'
require 'spec_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "Associations" do
    it { should have_many(:experiences) }
    it { should have_many(:events).through(:experiences) }
    it { should have_many(:checklists).through(:events) }
    it { should have_many(:items).through(:checklists) }
  end

  describe "validations" do
    it "is valid with a firstname, lastname, and email" do
      user = User.new(first_name: "Kai", last_name:"Prout", email: "kai@example.com")
      expect(user).to be_valid
    end
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
    it { should validate_presence_of :email }
  end

  it "is invalid with a duplicate email address" do
    User.create(first_name: "John", last_name:"Foo",
    email: 'foo@foo.com')
    user = User.new(first_name: "Kai", last_name: "P",
    email: 'foo@foo.com')
    expect(user).to have(1).errors_on(:email)
  end
  it 'is invalid with a first name under 3 characters' do
    user = User.new(first_name: "K", last_name: "Prout",
    email: "foo@foo.com")
    expect(user).to have(1).errors_on(:first_name)
  end
end
