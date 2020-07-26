require "rails_helper"

RSpec.describe Types::QueryType do
  describe "items" do
    # create pair of items in database
    let!(:items) {create_pair(:item)}

    # define query
    let(:query) do
      %(query {
        items {
          title
        }
      })
    end

    # execute query and define result
    subject(:result) do
      MartianLibrarySchema.execute(query).as_json
    end

    it "returns all items" do
      expect(result.dig("data", "items")).to match_array(
        items.map { |item| {"title" => item.title}}
      )
    end
  end
end