require 'spec_helper'

describe Inventory do
  it {should have_valid(:title).when('coffee')}
  it {should_not have_valid(:title).when('', nil)}
  it {should have_valid(:description).when('dark roast')}
  it {should_not have_valid(:description).when('', nil)}
  it {should have_valid(:quantity).when(10.0)}
  it {should_not have_valid(:quantity).when('', nil)}
end
