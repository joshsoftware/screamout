module Screamout
  class Engine < ::Rails::Engine
    isolate_namespace Screamout
    config.generators do |g|
      # g.orm :mongoid
      g.orm :active_record
    end
  end
end
