module Types
  class QueryType < BaseObject
    field :all_links, [LinkType], null: false, description: "Returns a list of all links"

    field :single_link, LinkType, null: true do
      description "Returns a single link"
      argument :id, ID, required: true
    end

    def all_links
      Link.all
    end

    def single_link(id:)
      Link.find_by(id: id)
    end
  end
end
