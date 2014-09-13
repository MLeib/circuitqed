require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Circuit QED Wiki')
    end
    
    it "should have the content 'Circuit QED Publications'" do
      visit '/static_pages/home'
      expect(page).to have_content('Circuit QED Publications')
    end
    
    it "should have the content 'My profile'" do
      visit '/static_pages/home'
      expect(page).to have_content('My profile')
    end
    
    it "should have the right title" do
  		visit '/static_pages/home'
  		expect(page).to have_title("Circuit QED | Home")
	end
  end
  
  describe "Impressum" do
  
    it "should have the content 'Haftungsausschluss'" do
      visit '/static_pages/impressum'
      expect(page).to have_content('Haftungsausschluss')
    end
    
    it "should have the content 'Disclaimer'" do
      visit '/static_pages/impressum'
      expect(page).to have_content('Disclaimer')
    end
    
    it "should have the right title" do
  		visit '/static_pages/impressum'
  		expect(page).to have_title("Circuit QED | Impressum")
	end
  end
  
  describe "Profile" do
  
    it "should have the content 'Martin Leib'" do
      visit '/static_pages/profile'
      expect(page).to have_content('Martin Leib')
    end
    
    it "should have the content 'MartinLeib@circuitQED.net'" do
      visit '/static_pages/profile'
      expect(page).to have_content('MartinLeib@circuitQED.net')
    end
    
    it "should have the right title" do
  		visit '/static_pages/profile'
  		expect(page).to have_title("Circuit QED | Martin Leib")
	end
  end
end
