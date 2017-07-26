class MasterController < ApplicationController
  def new_check
  end

  def view_checks
  end

  def custody_accounts
  end

 def alerts
    @checks = Check.where(date_released: nil)
 end



end
