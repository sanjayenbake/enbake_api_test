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

private

  def self.seed!
    create(:first_name => "Joe", :last_name =>  "Cat", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Dog", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Emu", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Frog", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Gnat", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Hog", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Ibis", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Joey", :password => "secret")
    create(:first_name => "Joe", :last_name =>  "Kiwi", :password => "secret")
  end

end
