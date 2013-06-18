module Buff
  module Extensions::Hash
    # Borrowd and modified from
    # {https://github.com/rails/rails/blob/master/activesupport/lib/active_support/core_ext/hash/except.rb}
    module Except
      # Return a hash that includes everything but the given keys. This is useful for
      # limiting a set of parameters to everything but a few known toggles:
      #
      #   @person.update(params[:person].except(:admin))
      def except(*keys)
        dup.except!(*keys)
      end

      # Replaces the hash without the given keys.
      def except!(*keys)
        keys.each { |key| delete(key) }
        self
      end
    end
  end
end

class Hash
  include Buff::Extensions::Hash::Except
end
