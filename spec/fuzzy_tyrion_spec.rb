require 'fuzzy_tyrion'

describe FuzzyTyrion::Awesome do
  context "Class that includes this module" do
    it "should respond to danger_danger" do
      class MyClass
        include FuzzyTyrion::Awesome
      end

      expect(MyClass).to respond_to(:danger_danger)
    end
  end

  context ".danger_danger" do
    context "instance, when invalid thing is assigned to the specified attribute" do
      it "should raise an error" do
        class MyClass
          include FuzzyTyrion::Awesome

          attr_accessor :my_var
          danger_danger :my_var, "Not a string" do |o|
            o.is_a?(String)
          end
        end

        m = MyClass.new
        expect{m.my_var = 12121}.to raise_error(Exception)
      end
    end
  end
end
