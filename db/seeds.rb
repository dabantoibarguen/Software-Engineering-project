# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Populate as console
User.delete_all
User.create!(:email => 'admin@colgate.edu', :admin => true, :password => "colgate13")
u = User.create!(email: "karen@livelaughlove.com", password: "iamthebest")
u2 = User.create!(email: "Marx@marxism.com", password: "marxist")


Post.delete_all
p = Post.create!(name: "First post", description: "This is a mock post to fill the site. Pay no attention to it. Donec tincidunt leo dapibus, porta libero ut, volutpat quam. Nam eget tellus ornare, euismod mi eget, vulputate ipsum. Cras at consequat mauris, ut gravida ligula. Nullam nisl dui, tincidunt a risus in, porttitor fermentum massa. Nam finibus enim vitae ex pretium, quis dignissim tellus sodales. Nam at lobortis metus. Nullam rhoncus feugiat dictum.  Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus.", user_id: u.id)
Post.create(name: "Second post", description: "Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.Maecenas diam mauris, auctor et tortor at, egestas euismod nibh. In rutrum enim ac rutrum faucibus. Vestibulum convallis metus sed vestibulum lobortis. Morbi pharetra posuere consectetur. Phasellus aliquam libero vitae sapien sodales, nec faucibus lectus placerat. Aenean laoreet condimentum nunc in varius.", user_id: u.id)
Post.create(name: "Some post", description: "Aenean euismod ante id libero faucibus consectetur. Suspendisse purus lectus, dapibus vitae nisi ac, varius semper dolor. In tincidunt velit diam, et hendrerit nunc lacinia sit amet. Nullam nisl dui, tincidunt a risus in, porttitor fermentum massa. Nam finibus enim vitae ex pretium, quis dignissim tellus sodales. Nam at lobortis metus. Nullam rhoncus feugiat dictum. Nullam nisl dui, tincidunt a risus in, porttitor fermentum massa. Nam finibus enim vitae ex pretium, quis dignissim tellus sodales. Nam at lobortis metus. Nullam rhoncus feugiat dictum. Nullam nisl dui, tincidunt a risus in, porttitor fermentum massa. Nam finibus enim vitae ex pretium, quis dignissim tellus sodales. Nam at lobortis metus. Nullam rhoncus feugiat dictum. Nullam nisl dui, tincidunt a risus in, porttitor fermentum massa. Nam finibus enim vitae ex pretium, quis dignissim tellus sodales. Nam at lobortis metus. Nullam rhoncus feugiat dictum.", user_id: u2.id)
Post.create(name: "Generic post", description: "Curabitur finibus sapien id nisi pretium efficitur. Aenean laoreet enim non est efficitur luctus. Duis ullamcorper aliquam purus mollis vehicula. Quisque in felis hendrerit, condimentum massa vel, laoreet lacus. Quisque blandit ultricies mollis. Etiam nec nisl consequat, mattis dui ornare, feugiat lectus.Duis ullamcorper aliquam purus mollis vehicula. Quisque in felis hendrerit, condimentum massa vel, laoreet lacus. Quisque blandit ultricies mollis. Etiam nec nisl consequat, mattis dui ornare, feugiat lectus.Duis ullamcorper aliquam purus mollis vehicula. Quisque in felis hendrerit, condimentum massa vel, laoreet lacus. Quisque blandit ultricies mollis. Etiam nec nisl consequat, mattis dui ornare, feugiat lectus.Duis ullamcorper aliquam purus mollis vehicula. Quisque in felis hendrerit, condimentum massa vel, laoreet lacus. Quisque blandit ultricies mollis. Etiam nec nisl consequat, mattis dui ornare, feugiat lectus.", user_id: u2.id)

Item.delete_all
Item.create(name: "Banana", description: "Just a banana", calories: 42, diet: "vegetarian")
Item.create(name: "Apple", description: "Just an apple", calories: 25, diet: "vegetarian")
Item.create(name: "Frank Burger", description: "Might have cheese", calories: 821, diet: "non-vegetarian")
Item.create(name: "Pizza", description: "Always there", calories: 421, diet: "non-vegetarian")

# c = Comment.new(comment: "Test comment #1")
# c.post = p
# c.user = u
# c.save()