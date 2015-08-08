require 'spec_helper'

describe Automatiek::Gem do
  it "can be initialized with a name and a block" do
    gem = described_class.new("name") { |lib| lib.prefix = "prefix" }
    expect(gem.gem_name).to eq("name")
    expect(gem.prefix).to eq("prefix")
  end
end
