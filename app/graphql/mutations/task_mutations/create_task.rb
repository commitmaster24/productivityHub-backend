module Mutations::TaskMutations
	class CreateTask < Mutations::BaseMutation
		argument :name, String, required: true
		argument :description, String, required: false
		argument :due_date, String, required: false
		argument :user_id, ID, required: true

		field :task, Types::TaskMasterType
		field :errors, [String]

		def resolve(name:, description: nil, due_date:, user_id:)
			user = User.find(user_id)
			if(user)
				parsed_due_date = DateTime.iso8601(due_date) if due_date
				task = TaskMaster.new(name: name, description: description, due_date: parsed_due_date, user_id: user_id)
				if(task.save)
					{
						task: task,
						errors: []
					}
				else
					{
						task: nil,
						errors: task.errors.full_messages
					}
				end
			else
				{
					task: nil,
					errors: user.errors.full_messages
				}
			end
		end
	end
end