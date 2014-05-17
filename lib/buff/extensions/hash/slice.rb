module Buff
  module Extensions::Hash
    # Borrowd and modified from
    # {https://github.com/rails/rails/blob/master/activesupport/lib/active_support/core_ext/hash/slice.rb}
    module Slice
      class << self
        def extended(base)
          base.extend(ClassMethods)
        end
      end

      module ClassMethods
        def slice(obj, *keys)
          obj.keys.map! { |key| obj.convert_key(key) } if obj.respond_to?(:convert_key, true)
          obj.keys.each_with_object(obj.class.new) { |k, hash| hash[k] = obj[k] if obj.has_key?(k) }
        end

        def slice!(obj, *keys)
          obj.keys.map! { |key| obj.convert_key(key) } if obj.respond_to?(:convert_key, true)
          omit = obj.slice(*obj.keys - keys)
          hash = obj.slice(*keys)
          obj.replace(hash)
          omit
        end

        def extract!(obj, *keys)
          obj.keys.each_with_object(obj.class.new) { |key, result| result[key] = obj.delete(key) if obj.has_key?(key) }
        end

        extend self
      end

      # Slice a hash to include only the given keys. This is useful for
      # limiting an options hash to valid keys before passing to a method
      def slice(*keys)
        ClassMethods.slice(self, *keys)
      end

      # Replaces the hash with only the given keys.
      # Returns a hash containing the removed key/value pairs.
      #
      #   { a: 1, b: 2, c: 3, d: 4 }.slice!(:a, :b)
      #   # => {:c=>3, :d=>4}
      def slice!(*keys)
        ClassMethods.slice!(self, *keys)
      end

      # Removes and returns the key/value pairs matching the given keys.
      #
      #   { a: 1, b: 2, c: 3, d: 4 }.extract!(:a, :b) # => {:a=>1, :b=>2}
      #   { a: 1, b: 2 }.extract!(:a, :x)             # => {:a=>1}
      def extract!(*keys)
        ClassMethods.extract!(self, *keys)
      end
    end
  end
end
