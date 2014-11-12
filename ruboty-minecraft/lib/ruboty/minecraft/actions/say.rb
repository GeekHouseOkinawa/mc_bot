require 'shellwords'

module Ruboty
  module Minecraft
    module Actions
      class Say < Ruboty::Actions::Base
        def call
          `screen -S minecraft -p 0 -X stuff "say #{Shellwords.escape(message[:text])}$(printf \\r)"`
        end
      end
    end
  end
end
