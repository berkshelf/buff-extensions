module Buff
  module Extensions
    module ReverseMerge
      # @param [Hash] other
      #
      # @return [Hash]
      def reverse_merge(other)
        other.merge(self)
      end

      # @param [Hash] other
      #
      # @return [Hash]
      def reverse_merge!(other)
        merge!(other) { |key, old, new| old }
      end
    end
  end
end
