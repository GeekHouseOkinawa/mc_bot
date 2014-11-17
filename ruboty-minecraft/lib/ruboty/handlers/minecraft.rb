require "ruboty/minecraft/actions/say"

module Ruboty
  module Handlers
    class Minecraft < Base
      on /.*/, name: 'say', description: 'say minecraft', all: true, hidden: true

      def say(message)
        return if message.from_name == message.robot.name
        Ruboty::Minecraft::Actions::Say.new(message).call
      end
    end
  end
end
