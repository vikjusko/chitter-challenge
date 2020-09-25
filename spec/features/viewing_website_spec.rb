feature 'viewing website' do
		scenario 'can see main page content' do 
				visit '/'
				expect(page).to have_content "Welcome to chitter!"
		end
end

feature 'website shows peeps' do
		scenario 'you can see all of the peeps' do
			connection = PG.connect(dbname: "chitter_test")
			connection.exec("INSERT INTO chitters (content) VALUES ('Well its friday!');")
			connection.exec("INSERT INTO chitters (content) VALUES ('Ready for the weekend?');")
			visit '/peeps' 
			expect(page).to have_content "Well its friday!"
			expect(page).to have_content "Ready for the weekend?"
		end 
	end 

