feature 'viewing website' do
		scenario 'can see main page content' do 
				visit '/'
				expect(page).to have_content "Welcome to chitter!"
		end
end

feature 'website shows peeps' do
		scenario 'you can see all of the peeps' do
			 Peep.create(content: "Well its friday!")
			 Peep.create(content: "Ready for the weekend?")
			 visit '/peeps' 
			 expect(page).to have_content "Well its friday!"
			 expect(page).to have_content "Ready for the weekend?"
		end 
end 

feature 'adding a new peep' do
		scenario "user can add a new peep" do
			 visit '/peeps/new' 
			 fill_in('content', with: 'Finally, I finished!')
			 click_button('Submit')
			 expect(page).to have_content 'Finally, I finished!'
		end 
end 

feature 'signing up' do
	 scenario 'a user can sign up' do
 		 visit '/users/new'
 		 fill_in('email', with: 'test@google.com')
 		 fill_in('password', with: 'password1')
 		 click_button 'Sign up'

 		 expect(page).to have_content "Welcome, test@google.com"
 	end 
end
