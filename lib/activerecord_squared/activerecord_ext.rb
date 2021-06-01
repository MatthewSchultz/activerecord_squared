module ActiveRecord
  class Base
    def self.[](input)
      case input
      when nil
        # Specifically enables ```SomeModel[nil]``` to not error out.
        return nil
      when ::Hash
        return self.where(input)
      else
        return self.find(input)
      end
    end
  end
end
