module Buff
  module Extensions::Hash
    module ReverseMerge
      class << self
        def extended(base)
          base.extend(ClassMethods)
        end
      end

      module ClassMethods
        # @param [Hash] other
        #
        # @return [Hash]
        def reverse_merge(one, two)
          two.merge(one)
        end

        # @param [Hash] other
        #
        # @return [Hash]
        def reverse_merge!(one, two)
          one.merge!(two) { |key, old, new| old }
        end

        extend self
      end

      # @param [Hash] other
      #
      # @return [Hash]
      def reverse_merge(other)
        ClassMethods.merge(self, other)
      end

      # @param [Hash] other
      #
      # @return [Hash]
      def reverse_merge!(other)
        ClassMethods.reverse_merge!(self, other)
      end
    end
  end
end
