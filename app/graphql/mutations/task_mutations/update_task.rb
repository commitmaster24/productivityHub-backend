module Mutations::TaskMutations
	class UpdateTask < Mutations::BaseMutation
		argument :id, ID, required: true
		argument :name, String, required: false
		argument :description, String, required: false
		argument :due_date, String, required: false

		field :task, Types::TaskMasterType
		field :errors, [String]

		def resolve(id:, **attributes)
			task = TaskMaster.find_by(id: id)

			unless task
        return { task: nil, errors: ["Task not found"] }
      end

      if task.update(attributes.compact)
        { task: task.reload, errors: [] }
      else
        { task: nil, errors: task.errors.full_messages }
      end
		end
	end
end