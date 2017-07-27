class MasterController < ApplicationController
  def new_check
  end

  def view_checks
  end

  def custody_accounts
  	@accounts = []
  	Check.where.not(date_released:nil).each do |check|

		if (check.from = check.account.client.name) &&
			((check.to = check.account) || (check.to = check.account.client.name)) &&
			(((check.date_released - check.date_received).to_i) >3)
	  		puts "yaya it worked"

	  		@accounts.push(check.account)
	  	

	  	elsif ((check.from != check.account.client.name) || (check.from != check.account) || (check.from != "XYZ")) && (check.to = check.account)
	  		puts "test for custody for third party, need to include date here."
	  		@accounts.push(check.account)
	  	end
  	
  	end
  end

 def alerts
    @checks = Check.where(date_released: nil)
 end



end
