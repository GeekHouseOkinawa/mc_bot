require "ruboty/minecraft/actions/say"

module Ruboty
  module Handlers
    class Minecraft < Base
      on /.*/, name: 'say', description: 'say minecraft', all: true, hidden: true

      def say(message)
        Ruboty::Minecraft::Actions::Say.new(message).call
      end
    end
  end
end
