#---
# Excerpted from "Rails, Angular, Postgres, and Bootstrap",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/dcbang for more book information.
#---
require 'rails_helper'
require 'support/violate_check_constraint_matcher'

describe User do
  describe "email" do

    # ... rest of the test
    let(:user) { 
      User.create!(email: "foo@waec.org.ng", 
                   password: "qwertyuiop", 
                   password_confirmation: "qwertyuiop")
    
    }
    it "absolutely prevents invalid email addresses" do
      expect {
        user.update_attribute(:email, "foo@bar.com")
      }.to violate_check_constraint(:email_must_be_company_email)
    end
  end
end
