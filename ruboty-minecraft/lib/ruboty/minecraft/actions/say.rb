require 'shellwords'

module Ruboty
  module Minecraft
    module Actions
      class Say < Ruboty::Actions::Base
        def call
          `screen -S minecraft -p 0 -X stuff say\\ #{Shellwords.escape(text)}`
        end

        def text
          "<#{message.from_name}> #{message.body}\r"
        end
      end
    end
  end
end
