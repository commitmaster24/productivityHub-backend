# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :task_masters, [Types::TaskMasterType], null: false
    field :task_master, Types::TaskMasterType, null: false do 
      argument :id, ID, required: true
    end

    field :users, [Types::UserType], null: false
    field :user, Types::UserType, null: false do 
      argument :id, ID, required: true
    end

    field :note_genius, [Types::NoteGeniuType], null: false
    field :note_geniu, Types::NoteGeniuType, null: false do
      argument :id, ID, required: true
    end

    def users
      User.all
    end

    def note_genius
      NoteGeniu.all
    end    

    def task_masters
      TaskMaster.all
    end

    def task_master(id:)
      TaskMaster.find(id)
    end

    def user(id:)
      User.find(id)
    end


    def note_geniu(id:)
      NoteGeniu.find(id)
    end
  end
end
