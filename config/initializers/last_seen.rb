Warden::Manager.after_authentication do |user, auth, _|
  register = LastSeen::RegisterVisit.new(user, auth)
  register.record_visit
end

Warden::Manager.after_set_user do |user, auth,  _|
  register = LastSeen::RegisterVisit.new(user, auth)
  register.record_visit
end

Warden::Manager.before_logout do |user,auth, _|
  register = LastSeen::RegisterVisit.new(user, auth)
  register.invalidate_device
end
