module Mutations::UserMutations
	class UpdateUser < Mutations::BaseMutation
		argument :id, ID, required: true
		argument :email, String, required: false
		argument :name, String, required: false

		field :user, Types::UserType
		field :errors, [String]

		def resolve(id:, **attributes)
			user = User.find_by(id: id)

      unless user
        return { user: nil, errors: ["User not found"] }
      end

      if user.update(attributes.compact)
        { user: user.reload, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
		end
	end
end