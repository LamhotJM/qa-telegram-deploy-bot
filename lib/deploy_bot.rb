# frozen_string_literal: true

class DeployBot
  def self.start
    Telegram::Bot::Client.run(ENV['BOT_TOKEN']) do |bot|
      bot.listen do |message|
        case message.text
        when '/start'
          bot.api.send_message(
            chat_id: message.chat.id,
            text: "Hello, #{message.from.first_name}"
          )
        when '/stop'
          bot.api.send_message(
            chat_id: message.chat.id,
            text: "Bye, #{message.from.first_name}"
          )
        end
      end
    end
  rescue => e
    puts e.inspect
    retry
  end
end
