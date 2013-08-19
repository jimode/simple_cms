class AdminUser < ActiveRecord::Base
  attr_accessible :first_name

  # To configure a different table name
  #set_table_name("admin_users")
end
