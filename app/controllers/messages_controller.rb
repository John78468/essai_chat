class MessagesController < ApplicationController
  def chat
    @messages = Message.all
  end


  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to chat_path
    else
      render 'chat'
    end
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end
end
