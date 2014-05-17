module Buff::Extensions
  module Hash
    require_relative 'hash/dotted_paths'
    require_relative 'hash/except'
    require_relative 'hash/key_transforms'
    require_relative 'hash/reverse_merge'
    require_relative 'hash/slice'

    extend Slice
    extend ReverseMerge
  end
end
