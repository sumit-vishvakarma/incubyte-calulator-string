require_relative "../calculator_string"

RSpec.describe CalculatorString do
	describe "to match data" do
    context "given an empty string" do
      it "returns 0" do
        expect(CalculatorString.add("")).to eq(0)
      end
    end

		context "given an single value" do	
      it "returns value " do
        expect(CalculatorString.add("1")).to eq(1)
      end
    end

		context "addition integer" do
      it "returns addition of value" do
        expect(CalculatorString.add("1,2")).to eq(3)
      end
    end

    context "addition of multiple values" do
      it "add multiple value" do
        expect(CalculatorString.add("1,2,4,5,5")).to eq(17)
      end
    end

    context "handle new lines between the number" do
      it "handle new lines (instead of commas)" do
        expect(CalculatorString.add("1\n2,3,8")).to eq(14)
      end
    end

    context "handle non negative value" do
      it "raises an error for negative numbers" do
        expect { CalculatorString.add("-1") }.to raise_error("negative numbers not allowed please give positive number -1")
      end
    end

    context "handle custom delimiter" do
      it "handles custom delimiter and adds the integers" do
        expect(CalculatorString.add("//;\n1;2")).to eq(3)
      end
    end
	end
end
