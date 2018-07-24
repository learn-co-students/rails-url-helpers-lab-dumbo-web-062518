class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    if self.active == false
      "inactive"
    else
      "active"
    end
  end

  def reactive
    if self.active == true
      "inactive"
    else
      "active"
    end
  end
end
