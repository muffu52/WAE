class NotificationTestController < ApplicationController
  def index; end

  def send_notification
    Rails.logger.info('Message to user ' + params[:user] + ': ' + params[:content])
    @sender = User.find(params[:user])
    p @sender.name
    ActionCable.server.broadcast 'room_channel', {
      content: params[:content],
      username: @sender.name
    }
  end
end
