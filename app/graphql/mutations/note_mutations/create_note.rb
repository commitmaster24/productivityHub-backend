module Mutations::NoteMutations
	class CreateNote < Mutations::BaseMutation
		argument :name, String, required: true
		argument :content, String, required: true
		argument :user_id, ID, required: true

		field :note, Types::NoteGeniuType
		field :errors, [String]

		def resolve(name:, content:, user_id:)
			user = User.find(user_id)
			if user
				note = NoteGeniu.new(name: name, content: content, user_id: user_id)
				if note.save
					{
						note: note,
						errors: []
					}
				else
					{
						note: nil,
						errors: note.errors.full_messages
					}
				end
			else
				{
					note: nil,
					errors: user.errors.full_messages
				}
			end
		end
	end
end