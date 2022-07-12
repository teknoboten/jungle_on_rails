class Sale < ApplicationRecord

  # this is an ACTIVE RECORD SCOPE
  # aka a class method
  # we can create as many of these as we want to look up stuff about sales
  # and now we can reference sales.active.any in the sales_helper file to check for active sales
  def self.active
    where("sales.starts_on <= ? AND sales.ends_on >= ?", Date.current, Date.current)
  end

  def finished? 
    ends_on < Date.current  
  end

  def upcoming? 
    starts_on > Date.current
  end

  def active? 
   !upcoming? && !finished? 
  end

end
