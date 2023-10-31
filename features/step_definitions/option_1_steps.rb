
Given('I navigate to the Green Kart homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
  sleep 1 # The sleeps are added to slow down the automation to show it working
end


Then('I should see the Green Kart homepage') do
  expect(page).to have_title 'GreenKart - veg and fruits kart'
  expect(page).to have_css 'input[placeholder=\'Search for Vegetables and Fruits\']'
  expect(page).to have_css 'button[type=\'submit\']'
  expect(page).to have_css '.brand.greenLogo'
  expect(page).to have_css '.cart-header-navlink[href=\'#/offers\']'
  expect(page).to have_css '.cart-header-navlink[href=\'https://rahulshettyacademy.com/dropdownsPractise/\']'
  expect(page).to have_css '.cart-icon'
end

When('I click the search bar') do
  find('input[placeholder=\'Search for Vegetables and Fruits\']').click
end

When('I search for cucumber') do
  find('input[placeholder=\'Search for Vegetables and Fruits\']').send_keys 'cucumber'
end

Then('I should see cucumber in the search results') do
  expect(page).to have_css 'img[alt=\'Cucumber - 1 Kg\']'
  expect(page).to have_button 'ADD TO CART'
  expect(page).to have_text '48'
end


