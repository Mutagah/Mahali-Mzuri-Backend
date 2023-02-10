class UserProfile < ApplicationRecord
  belongs_to :user

   after_update :update_user_details

     def update_user_details
         User.find(self.id).update!(
             {username: self.username,email_address: self.email_address}
             )
     end
end
