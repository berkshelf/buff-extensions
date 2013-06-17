module Buff
  module Extensions::Hash
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

class Hash
  include Buff::Extensions::Hash::ReverseMerge
end
