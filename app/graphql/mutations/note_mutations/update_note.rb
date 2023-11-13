module Mutations::NoteMutations
	class UpdateNote < Mutations::BaseMutation
		argument :id, ID, required: true
		argument :name, String, required: false
		argument :content, String, required: false

		field :note, Types::NoteGeniuType
		field :errors, [String]

		def resolve(id:, **attributes)
			note = NoteGeniu.find_by(id: id)

			unless note
        return { note: nil, errors: ["Note not found"] }
      end

      if note.update(attributes.compact)
        { note: note.reload, errors: [] }
      else
        { note: nil, errors: note.errors.full_messages }
      end

		end
	end
end