feature 'Viewing chitters' do 
	scenario 'main page has chitter content' do
	visit '/' 
	expect(page).to have_content "HELLO?!"
	end 
end 