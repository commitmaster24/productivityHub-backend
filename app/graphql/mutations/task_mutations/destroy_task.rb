module Mutations::TaskMutations
	class DestroyTask < Mutations::BaseMutation
		argument :id, ID, required: true
	
		field :task, Types::TaskMasterType, null: false
		field :errors, [String], null: false
	
		def resolve(id:)
			task = TaskMaster.find(id)
			if(task.destroy)
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
		end
	end
end
