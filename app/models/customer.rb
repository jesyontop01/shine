class Customer < ApplicationRecord
	enum status: [:signed_up, :verified, :inactive]
end
