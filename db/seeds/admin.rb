# frozen_string_literal: true

Admin.find_or_create_by!(email: 'superadmin@setaworkshop.com') do |admin|
  admin.password = '12345678'
end
