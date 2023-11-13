# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :name, String
    field :task_masters, [Types::TaskMasterType], null: true
    field :note_genius, [Types::NoteGeniuType], null: true
    field :tasks_count, Integer, null: true
    field :notes_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def tasks_count
      object.task_masters.size
    end 

    def notes_count
      object.note_genius.size
    end
  end
end
