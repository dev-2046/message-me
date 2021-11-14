class MessagesController < ApplicationController
  def create
    message = current_user.messages.build(params.require(:message).permit(:body))
    if !message.save
      flash[:error] = "something happened from sending your message"
    end
    redirect_to root_path
  end
end