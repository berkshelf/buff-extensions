require_relative 'hash/dotted_paths'
require_relative 'hash/key_transforms'
require_relative 'hash/reverse_merge'

class Hash
  include Buff::Extensions::DottedPaths
  include Buff::Extensions::KeyTransforms
  include Buff::Extensions::ReverseMerge
end
