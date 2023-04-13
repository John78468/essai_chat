class MessagesController < ApplicationController
  def chat
    @messages = Message.all
  end


  def create
    @message = Message.new
  end


  private

  def message_params

  end
end
