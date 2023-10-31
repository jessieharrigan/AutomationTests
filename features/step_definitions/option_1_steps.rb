
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
