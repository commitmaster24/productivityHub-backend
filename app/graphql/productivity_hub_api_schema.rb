# frozen_string_literal: true

class ProductivityHubApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
