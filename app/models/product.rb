class Product < ActiveRecord::Base
 validates :name,:batchno,:price,:quntity,:Category_type, :presence=>true   
has_attached_file :image
validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
def paypal_url(return_url) 
    values = { 
    :business => 'veerumca4495@gmail.com',
        :cmd => '_cart',
    :upload => 1,
    :return => return_url,
    }  
     values.merge!({ 
    "amount_1" => unit_price,
    "item_name_1" => name,
    "item_number_1" => id,
    "quantity_1" => quntity
    })
         # For test transactions use this URL
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
 end 

end
