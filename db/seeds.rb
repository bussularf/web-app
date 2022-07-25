puts "Generating seed..."

User.create(
  email: "jp@mail.com",
  nickname: "jp",
  password: "123456",
  password_confirmation: "123456"
)
Chatroom.create(
  name: "SQL"
)

puts "End of Seed!"
