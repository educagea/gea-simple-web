[:super_admin, :admin, :teacher, :pupil].each { |r| Role.create(:name => r) }
u = User.create(:email => 'barraorion@gmail.com', :password => 'thier83', :password_confirmation => 'thier83')
u.roles << Role.find_by_name('super_admin')
u.confirm!
