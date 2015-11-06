require 'twilio-ruby'

class Sendtext_hold 

  def intialize
    # put your own credentials here 
    account_sid = 'AC2391d667156dd851200dcb4ee67b0a38' 
    auth_token = 'ffc00af25855dcb5163195d7351169d1' 
     
    # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 
     
    @client.account.messages.create({
      :from => '+16466797935', 
      :to => current_user.phonenumber, 
      :body => 'Got this shit', 
    })

  end


end