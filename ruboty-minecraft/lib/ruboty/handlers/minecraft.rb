require "ruboty/minecraft/actions/say"

module Ruboty
  module Handlers
    class Minecraft < Base
      on /say (?<text>.*)/, name: 'say', description: 'say minecraft'

      def say(message)
        Ruboty::Minecraft::Actions::Say.new(message).call
      end
    end
  end
end
