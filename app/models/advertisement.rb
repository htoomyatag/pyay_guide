class Advertisement < ActiveRecord::Base


			  has_attached_file :avatar1, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
      validates_attachment_content_type :avatar1, content_type: /\Aimage\/.*\z/

      	  has_attached_file :avatar2, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
      validates_attachment_content_type :avatar2, content_type: /\Aimage\/.*\z/


      	  has_attached_file :avatar3, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
      validates_attachment_content_type :avatar3, content_type: /\Aimage\/.*\z/


      	  has_attached_file :avatar4, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
      validates_attachment_content_type :avatar4, content_type: /\Aimage\/.*\z/


      	  has_attached_file :avatar5, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
      validates_attachment_content_type :avatar5, content_type: /\Aimage\/.*\z/


      CATEGORY = ["bank",
"beauty_saloon",
"computer",
"shopping_mall",
"education",
"hospital",
"store",
"famous_place",
"gas_station",
"jewellery",
"emergency_contact",
"farmer",
"electronic",
"tea_shop",
"cycle",
"restaurant",
"hotel",
"bus"
]


MAINADS = ["yes","no"]




      def avatar_url
            avatar1.url
      end



end
