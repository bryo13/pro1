
r1 = Role.create({name: "lecture", description: "Can create and destroy"})
r2 = Role.create({name: "student", description: "Download and upload assignment"})

u1 = User.create({name: "Sally", email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({name: "Sue", email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u3 = User.create({name: "Kev", email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create({name: "Jack", email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})

i1 = Task.create({unit_code: "INF 323", unit_name: "AI", semester: 1, user_id: u2.id})
i2 = Task.create({unit_code: "INF 100", unit_name: "Basic Math", semester: 2, user_id: u2.id})
i3 = Task.create({unit_code: "COM 323", unit_name: "Networking", semester: 1, user_id: u3.id})