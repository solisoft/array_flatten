require "array.rb"

RSpec.describe Array, "#flatten" do
  describe ".flatten_me" do
    context "given an empty array" do
      it "returns empty array" do
        expect([].flatten_me).to eql([])
      end
    end

    context "given an array" do
      it "returns flatten array" do
        expect([1, 2, [3, 4], 5, [6, 7, [8]]].flatten_me).to eql([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end

    context "given an flat array" do
      it "returns the same array" do
        expect([1, 2, 3, 4, 5, 6, 7, 8].flatten_me).to eql([1, 2, 3, 4, 5, 6, 7, 8])
      end
    end
  end
end