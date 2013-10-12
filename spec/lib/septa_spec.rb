require 'spec_helper'

describe Septa do
    it "should have a version number" do
        expect(Septa::VERSION).to_not be_empty
    end
end
