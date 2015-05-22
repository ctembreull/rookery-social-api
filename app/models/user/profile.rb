module Comotion
  module User
    class Profile
=begin
      # General Fields
      field :first_name,   type: String
      field :last_name,    type: String
      field :title,        type: String
      field :organization, type: String
      field :headline,     type: String
      field :role,         type: String
      field :seeking,      type: String
      field :about,        type: String
      field :gender,       type: String
      field :street,       type: String
      field :city,         type: String
      field :country,      type: String
      field :state,        type: String
      field :birthday,     type: Date

      # Communication Fields
      field :phone_private, type: String
      field :phone_work,    type: String
      field :phone_mobile,  type: String
      field :fax,           type: String
      field :skype,         type: String
      field :msn,           type: String
      field :icq,           type: String
      field :xmpp,          type: String

      # Social Bookmark Fields
      field :url,           type: String
      field :linkedin,      type: String
      field :facebook,      type: String
      field :instagram,     type: String
      field :researchgate,  type: String
      field :twitter,       type: String
      field :xing,          type: String
      field :youtube,       type: String
      field :vimeo,         type: String
      field :flickr,        type: String
      field :myspace,       type: String
      field :google_plus,   type: String

      # VALIDATIONS
      validates :role,    inclusion: { in: Comotion::Constants.UserRoles.keys.map {|k| k.to_s} }
      validates :seeking, inclusion: { in: Comotion::Constants.UserRoles.keys.map {|k| k.to_s} }
      validates :gender,  inclusion: { in: Comotion::Constants.UserGenders.keys.map {|k| k.to_s} + [nil, ''] }




      def self.build(params)
        self.new(
          first_name:   params[:first_name],
          last_name:    params[:last_name],
          title:        params[:title],
          organization: params[:organization],
          role:         params[:role],
          seeking:      params[:seeking]
        )
      end
=end
    end
  end
end
