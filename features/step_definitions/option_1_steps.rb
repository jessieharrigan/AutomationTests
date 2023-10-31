
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
  sleep 1
end

When('I search for cucumber') do
  find('input[placeholder=\'Search for Vegetables and Fruits\']').send_keys 'cucumber'
  sleep 1
end

Then('I should see cucumber in the search results') do
  expect(page).to have_css 'img[alt=\'Cucumber - 1 Kg\']'
  expect(page).to have_button 'ADD TO CART'
  expect(page).to have_text '48'
end

When('I add cucumber to cart') do
  first(:button, 'ADD TO CART').click
  sleep 1
end

Then('I should see cucumber in the cart') do
  find('img[alt=\'Cart\']').click
  expect(page).to have_text 'Cucumber - 1 Kg'
end

When('I click proceed to checkout') do
  find('div[class=\'cart-preview active\'] button[type=\'button\']').click
  sleep 1
end

Then('I should see the checkout page') do
  expect(page).to have_text 'Cucumber - 1 Kg'
  expect(page).to have_text '48'
end

When('I click place order') do
  first(:button, 'Place Order').click
  sleep 1
end

Then('I should see the final page') do
  expect(page).to have_text 'Choose Country'
  expect(page).to have_text 'Agree to the Terms & Conditions'
end

When('I select country') do
  find('select').click
  find('option', text: 'United Kingdom').click
  find('input[type=\'checkbox\']').click
  first(:button, 'Proceed').click
  sleep 1
end

Then('I should see the order confirmation page') do
  expect(page).to have_text 'Thank you, your order has been placed successfully'
end

