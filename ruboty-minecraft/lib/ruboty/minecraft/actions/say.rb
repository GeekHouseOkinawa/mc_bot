require 'shellwords'

module Ruboty
  module Minecraft
    module Actions
      class Say < Ruboty::Actions::Base
        def call
          message.reply(message[:text])
          `screen -S minecraft -p 0 -X stuff "#{Shellwords.escape(minecraft_command)}$(printf \\\\r)"`
        rescue => e
          message.reply(e.message)
        end

        def minecraft_command
          "say #{message[:text]}"
        end
      end
    end
  end
end
