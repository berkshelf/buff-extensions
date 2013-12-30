module Buff
  module Boolean; end
end

class TrueClass
  include Buff::Boolean
end

class FalseClass
  include Buff::Boolean
end
