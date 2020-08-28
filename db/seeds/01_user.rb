if User.count.zero?
  User.create(email: "admin@example.com", password: 123456, role: :admin)
  User.create(email: "editor@example.com", password: 123456, role: :editor)
  User.create(email: "user@example.com", password: 123456, role: :user)
end
