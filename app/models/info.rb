class Info < ActiveRecord::Base

 def first_name_list
    first_name.splitt(",")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
