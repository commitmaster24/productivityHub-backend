# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::UserMutations::CreateUser
    field :destroy_user, mutation: Mutations::UserMutations::DestroyUser
    field :update_user, mutation: Mutations::UserMutations::UpdateUser

    field :create_task, mutation: Mutations::TaskMutations::CreateTask
    field :destroy_task, mutation: Mutations::TaskMutations::DestroyTask
    field :update_task, mutation: Mutations::TaskMutations::UpdateTask

    field :create_note, mutation: Mutations::NoteMutations::CreateNote
    field :destroy_note, mutation: Mutations::NoteMutations::DestroyNote
    field :update_note, mutation: Mutations::NoteMutations::UpdateNote

  end
end
