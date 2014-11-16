require 'shellwords'

module Ruboty
  module Minecraft
    module Actions
      class Say < Ruboty::Actions::Base
        def call
          `screen -S minecraft -p 0 -X stuff say\\ #{Shellwords.escape(text)}`
          `screen -S minecraft -p 0 -X stuff "$(printf \\\\r)"`
        end

        def text
          "<#{message.from_name}> #{message.body}"
        end
      end
    end
  end
end
