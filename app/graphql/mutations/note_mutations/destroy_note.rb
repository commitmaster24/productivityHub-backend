module Mutations::NoteMutations
	class DestroyNote < Mutations::BaseMutation
		argument :id, ID, required: true
	
		field :note, Types::NoteGeniuType, null: false
		field :errors, [String], null: false
	
		def resolve(id:)
			note = NoteGeniu.find(id)
			if(note.destroy)
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
		end
	end
end
