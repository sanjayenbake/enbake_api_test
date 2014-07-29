class User < ActiveRecord::Base
  
  validates :first_name, :last_name, :password, presence: true
  
  def as_json(options={})
    { "id" =>id,
      "firstName" => first_name,
      "lastName" => last_name}
  end

  def firstName=(value)
    write_attribute(:first_name, value)
  end
  
  def lastName=(value)
    write_attribute(:last_name, value)
  end

end
