solicitor = User.create!(first_name: "Talha", last_name: "Qureshi", role: 0, email: "talha_qureshi@hotmail.com", phone: "213-986-9911", password: "123!@#")
client_one = User.create!(first_name: "Basil", last_name: "Meer", role: 1, email: "basil@meer.com", phone: "307-290-555", password: "123!@#")
client_two = User.create!(first_name: "Matt", last_name: "Murdok", role: 1, email: "matt@murdok.com", phone: "335-770-3613", password: "123!@#")
client_three = User.create!(first_name: "Stephanie", last_name: "Crawfard", role: 1, email: "stephanie@crawfard.com", phone: "321-457-5835", password: "123!@#")

case_one = Case.create!(case_number: "123ABC", status: 1, status_text: "Pending file submission", client_id: client_one.id, solicitor_id: solicitor.id)
case_two = Case.create!(case_number: "1122AABB", status: 2, status_text: "Client reconsidering decision", client_id: client_two.id, solicitor_id: solicitor.id)
case_three = Case.create!(case_number: "ABC123", status: 3, status_text: "Property sold", client_id: client_three.id, solicitor_id: solicitor.id)

Address.create!( street: '427 Willow Lane', city: 'New Haven', state: 'Connecticut', zip: '06511', case_id: case_one.id )
Address.create!(street: '785 Oak Street',city: 'Portland',state: 'Oregon',zip: '97203',case_id: case_two.id)
Address.create!(street: '123 Maple Avenue',city: 'Phoenix',state: 'Arizona',zip: '85001',case_id: case_three.id)
