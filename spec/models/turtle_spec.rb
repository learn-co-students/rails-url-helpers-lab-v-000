require 'rails_helper'

describe Turtle do
  before(:each) do
    @turtle = Turtle.create!(name: "Raphel", age: 15)
  end

  it 'can be created' do
    expect(@turtle).to be_valid
  end

  it 'has an active attribute that defaults to false' do
    expect(@turtle.active).to eq(false)
  end

  it 'has a display instance method' do
    expect(@turtle.display).to eq("Raphel is 15 years old")
  end
end
