puts "Generating seed..."

User.create(
  email: "jp@mail.com",
  nickname: "jp",
  password: "123456",
  password_confirmation: "123456"
)
Chatroom.create(
  name: "SQL"
  Chatroom.photo.attach(io: File.open('app/assets/images/2.jpg'), filename: '2.jpg', content_type: 'image/jpg')
)

puts "End of Seed!"
