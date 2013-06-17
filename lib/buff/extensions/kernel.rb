require_relative 'kernel/reporting'

class Object
  # Re-include since the Kernel module was altered
  include Kernel
end
