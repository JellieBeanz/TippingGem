class String
  def integer?
    return true if self =~ /^[1-9]\d*(\.\d+)?$/
    false
  end
end

module TippingGem

    class Builder
      def initialize total:, gratuity:
        @total = total
        @gratuity = gratuity
      end

        ##check if input is a number or a string from the button pressed.
      def generate
        return calculation if number_based?
        string_based
      end

      def number_based?
        (@gratuity.is_a? Numeric) || (@gratuity.integer?)
      end

      def string_based
        case @gratuity.downcase
          when 'five' then calculation 5
          when 'ten' then calculation 10
          when 'fifteen' then calculation 15
          when 'twenty' then calculation 20
        end
      end

        def calculation gratuity = @gratuity
          @total += @total * (gratuity.to_f / 100)
        end
      end
end
