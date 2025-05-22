require "test_helper"

RSpec.describe Post, type: :model do
  it "is valid with valid attributes" do
    post = Post.new(title: "Test", description: "Test desc", status: "active")
    expect(post).to be_valid
  end

  it "is not valid without a title" do
    post = Post.new(title: nil, description: "Test desc", status: "active")
    expect(post).not_to be_valid
  end

  it "is not valid without a description" do
    post = Post.new(title: "Test", description: nil, status: "active")
    expect(post).not_to be_valid
  end

  it "is not valid without a status" do
    post = Post.new(title: "Test", description: "Test desc", status: nil)
    expect(post).not_to be_valid
  end
end