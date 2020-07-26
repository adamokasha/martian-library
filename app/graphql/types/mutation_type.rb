module Types
  class MutationType < Types::BaseObject
    field :sign_in, mutation: Mutations::SignInMutation
    field :update_item, mutation: Mutations:UpdateItemMutation
  end
end
