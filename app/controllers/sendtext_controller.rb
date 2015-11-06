require 'twilio-ruby'
class SendtextController < ApplicationController
  include ApplicationHelper

  def index
  end

  def send_text_message
    sendtext
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end


end