class Bus < ActiveRecord::Base

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



      before_save :validate_desc

      def validate_desc
         self.description.to_s.gsub('rn','').gsub('tt-t','').gsub('t-t','') unless self.description.nil?
      end
      
      def avatar_url1
            avatar1.url
      end


      def avatar_url2
            avatar2.url
      end


            def avatar_url3
            avatar3.url
      end


            def avatar_url4
            avatar4.url
      end


            def avatar_url5
            avatar5.url
      end

end
