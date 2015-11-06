module ApplicationHelper

  def sendtext

    # put your own credentials here 
    account_sid = 'AC2391d667156dd851200dcb4ee67b0a38' 
    auth_token = 'ffc00af25855dcb5163195d7351169d1' 
     
    # set up a client to talk to the Twilio REST API 
    @client = Twilio::REST::Client.new account_sid, auth_token 
  
  	@prescription = Prescription.where(user_id: current_user.id).last
  	@dose = @prescription.dosage
  	@remainder = @prescription.remainder
  	@user_name = current_user.first_name
  	@presc_name = @prescription.name

  	@doses_left = @remainder / @dose
   
    if @doses_left > 2
	    @client.account.messages.create({
	      :from => '+16466797935', 
	      :to => current_user.phonenumber, 
	      :body => "Hey #{@user_name}, reminder to take #{@dose} #{@presc_name}. (#{@remainder} left)", 
	    })
	else
		@client.account.messages.create({
	      :from => '+16466797935', 
	      :to => current_user.phonenumber, 
	      :body => "Hey #{@user_name}, reminder to take #{@dose} #{@presc_name}. Your prescription is about to run out, only #{@doses_left} doses left.", 
	    })
	end

  end

end

