require 'shellwords'

module Ruboty
  module Minecraft
    module Actions
      class Say < Ruboty::Actions::Base
        def call
          message.reply(message[:text])
          `screen -S minecraft -p 0 -X stuff "say #{Shellwords.escape(text)}$(printf \\\\r)"`
        rescue => e
          message.reply(e.message)
        end

        def text
          message[:text]
        end
      end
    end
  end
end
