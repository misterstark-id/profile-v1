class PagesController < ApplicationController
  def home
    @message = Message.new
  end

  # def new
  #   @message = Message.new
  # end

  def create

    @message = Message.new message_params
    if @message.valid?
      MessageMailer.contact(@message).deliver_now
      redirect_to new_message_url, notice: "Message sending, thanks!"
    else
      render :home
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :body)
  end

end
