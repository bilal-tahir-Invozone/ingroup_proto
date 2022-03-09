defmodule InpowerGroupapi.GetCategoriesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          page_no: integer,
          per_page: integer
        }

  defstruct [:user_id, :page_no, :per_page]

  field :user_id, 1, type: :string
  field :page_no, 2, type: :int32
  field :per_page, 3, type: :int32
end

defmodule InpowerGroupapi.CreateCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          published: boolean
        }

  defstruct [:name, :published]

  field :name, 1, type: :string
  field :published, 2, type: :bool
end

defmodule InpowerGroupapi.EditCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          name: String.t(),
          published: boolean
        }

  defstruct [:id, :name, :published]

  field :id, 1, type: :int32
  field :name, 2, type: :string
  field :published, 3, type: :bool
end

defmodule InpowerGroupapi.DeleteCategoryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer
        }

  defstruct [:id]

  field :id, 1, type: :int32
end

defmodule InpowerGroupapi.GetCategoriesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          categories: InpowerGroupapi.CategoryPaged.t() | nil
        }

  defstruct [:categories]

  field :categories, 1, type: InpowerGroupapi.CategoryPaged
end

defmodule InpowerGroupapi.CategoryPaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          has_next: boolean,
          has_prev: boolean,
          prev_page: integer,
          list: [InpowerGroupapi.Category.t()],
          next_page: integer,
          first_page: integer,
          page: integer
        }

  defstruct [:has_next, :has_prev, :prev_page, :list, :next_page, :first_page, :page]

  field :has_next, 1, type: :bool
  field :has_prev, 2, type: :bool
  field :prev_page, 3, type: :int32
  field :list, 4, repeated: true, type: InpowerGroupapi.Category
  field :next_page, 5, type: :int32
  field :first_page, 6, type: :int32
  field :page, 7, type: :int32
end

defmodule InpowerGroupapi.CreateCategoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: InpowerGroupapi.Category.t() | nil
        }

  defstruct [:category]

  field :category, 1, type: InpowerGroupapi.Category
end

defmodule InpowerGroupapi.EditCategoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: InpowerGroupapi.Category.t() | nil
        }

  defstruct [:category]

  field :category, 1, type: InpowerGroupapi.Category
end

defmodule InpowerGroupapi.DeleteCategoryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          category: InpowerGroupapi.Category.t() | nil
        }

  defstruct [:category]

  field :category, 1, type: InpowerGroupapi.Category
end

defmodule InpowerGroupapi.Category do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer,
          name: String.t(),
          published: boolean
        }

  defstruct [:id, :name, :published]

  field :id, 1, type: :int32
  field :name, 2, type: :string
  field :published, 3, type: :bool
end

defmodule InpowerGroupapi.GetMembersRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_no: integer,
          per_page: integer,
          group_id: String.t()
        }

  defstruct [:page_no, :per_page, :group_id]

  field :page_no, 1, type: :int32
  field :per_page, 2, type: :int32
  field :group_id, 3, type: :string
end

defmodule InpowerGroupapi.GetMembersResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          members: InpowerGroupapi.MembersPaged.t() | nil
        }

  defstruct [:members]

  field :members, 1, type: InpowerGroupapi.MembersPaged
end

defmodule InpowerGroupapi.MembersPaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          has_next: boolean,
          has_prev: boolean,
          prev_page: integer,
          list: [InpowerGroupapi.Member.t()],
          next_page: integer,
          first_page: integer,
          page: integer
        }

  defstruct [:has_next, :has_prev, :prev_page, :list, :next_page, :first_page, :page]

  field :has_next, 1, type: :bool
  field :has_prev, 2, type: :bool
  field :prev_page, 3, type: :int32
  field :list, 4, repeated: true, type: InpowerGroupapi.Member
  field :next_page, 5, type: :int32
  field :first_page, 6, type: :int32
  field :page, 7, type: :int32
end

defmodule InpowerGroupapi.GetGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_no: integer,
          per_page: integer,
          category_id: integer
        }

  defstruct [:page_no, :per_page, :category_id]

  field :page_no, 1, type: :int32
  field :per_page, 2, type: :int32
  field :category_id, 3, type: :int32
end

defmodule InpowerGroupapi.GetMyGroupsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          page_no: integer,
          per_page: integer
        }

  defstruct [:user_id, :page_no, :per_page]

  field :user_id, 1, type: :string
  field :page_no, 2, type: :int32
  field :per_page, 3, type: :int32
end

defmodule InpowerGroupapi.GetGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t()
        }

  defstruct [:id]

  field :id, 1, type: :string
end

defmodule InpowerGroupapi.GetMyGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          groups: [InpowerGroupapi.Group.t()]
        }

  defstruct [:groups]

  field :groups, 1, repeated: true, type: InpowerGroupapi.Group
end

defmodule InpowerGroupapi.GetGroupsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          groups: [InpowerGroupapi.Group.t()]
        }

  defstruct [:groups]

  field :groups, 1, repeated: true, type: InpowerGroupapi.Group
end

defmodule InpowerGroupapi.GetGroupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: InpowerGroupapi.Group.t() | nil
        }

  defstruct [:group]

  field :group, 1, type: InpowerGroupapi.Group
end

defmodule InpowerGroupapi.CreateGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          user_id: String.t(),
          created_by: String.t(),
          featured_image: String.t(),
          visibility: String.t(),
          category_id: integer,
          status: String.t(),
          badge_id: [String.t()]

        }

  defstruct [
    :name,
    :description,
    :user_id,
    :created_by,
    :featured_image,
    :visibility,
    :category_id,
    :status,
    :badge_id

  ]

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :user_id, 3, type: :string
  field :created_by, 4, type: :string
  field :featured_image, 5, type: :string
  field :visibility, 6, type: :string
  field :category_id, 7, type: :int32
  field :status, 8, type: :string
  field :badge_id, 9, repeated: true, type: :string

end

defmodule InpowerGroupapi.CreateGroupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: InpowerGroupapi.Group.t() | nil
        }

  defstruct [:group]

  field :group, 1, type: InpowerGroupapi.Group
end

defmodule InpowerGroupapi.EditGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          user_id: String.t(),
          created_by: String.t(),
          featured_image: String.t(),
          visibility: String.t(),
          description: String.t(),
          category_id: integer,
          status: String.t(),
          badge_id: [String.t()]
        }

  defstruct [
    :id,
    :name,
    :user_id,
    :created_by,
    :featured_image,
    :visibility,
    :description,
    :category_id,
    :status,
    :badge_id
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :user_id, 3, type: :string
  field :created_by, 4, type: :string
  field :featured_image, 5, type: :string
  field :visibility, 6, type: :string
  field :description, 7, type: :string
  field :category_id, 8, type: :int32
  field :status, 9, type: :string
  field :badge_id, 10, repeated: true, type: :string
end

defmodule InpowerGroupapi.EditGroupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group: InpowerGroupapi.Group.t() | nil
        }

  defstruct [:group]

  field :group, 1, type: InpowerGroupapi.Group
end

defmodule InpowerGroupapi.Group do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          name: String.t(),
          description: String.t(),
          visibility: String.t(),
          members: [InpowerGroupapi.Member.t()],
          gallery: [InpowerGroupapi.Gallery.t()],
          featured_image: String.t(),
          category: InpowerGroupapi.Category.t() | nil,
          status: String.t(),
          badge_id: [String.t()]
        }

  defstruct [
    :id,
    :name,
    :description,
    :visibility,
    :members,
    :gallery,
    :featured_image,
    :category,
    :status,
    :badge_id
  ]

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :description, 3, type: :string
  field :visibility, 4, type: :string
  field :members, 5, repeated: true, type: InpowerGroupapi.Member
  field :gallery, 6, repeated: true, type: InpowerGroupapi.Gallery
  field :featured_image, 7, type: :string
  field :category, 8, type: InpowerGroupapi.Category
  field :status, 9, type: :string
  field :badge_id, 10, repeated: true, type: :string
  #add line
end

defmodule InpowerGroupapi.AddMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          group_id: String.t(),
          role: String.t()
        }

  defstruct [:user_id, :group_id, :role]

  field :user_id, 1, type: :string
  field :group_id, 2, type: :string
  field :role, 3, type: :string
end

defmodule InpowerGroupapi.AddMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member: InpowerGroupapi.Member.t() | nil
        }

  defstruct [:member]

  field :member, 1, type: InpowerGroupapi.Member
end

defmodule InpowerGroupapi.RemoveMemberRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          group_id: String.t()
        }

  defstruct [:user_id, :group_id]

  field :user_id, 1, type: :string
  field :group_id, 2, type: :string
end

defmodule InpowerGroupapi.RemoveMemberResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member: InpowerGroupapi.Member.t() | nil
        }

  defstruct [:member]

  field :member, 1, type: InpowerGroupapi.Member
end

defmodule InpowerGroupapi.Member do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          user_id: String.t(),
          group_id: String.t(),
          role: String.t(),
          status: String.t()
        }

  defstruct [:id, :user_id, :group_id, :role, :status]

  field :id, 1, type: :string
  field :user_id, 2, type: :string
  field :group_id, 3, type: :string
  field :role, 4, type: :string
  field :status, 5, type: :string
end

defmodule InpowerGroupapi.AddToGalleryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          image: String.t(),
          caption: String.t(),
          group_id: String.t()
        }

  defstruct [:image, :caption, :group_id]

  field :image, 1, type: :string
  field :caption, 2, type: :string
  field :group_id, 3, type: :string
end

defmodule InpowerGroupapi.AddToGalleryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gallery: InpowerGroupapi.Gallery.t() | nil
        }

  defstruct [:gallery]

  field :gallery, 1, type: InpowerGroupapi.Gallery
end

defmodule InpowerGroupapi.Gallery do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          image: String.t(),
          group_id: String.t(),
          caption: String.t()
        }

  defstruct [:id, :image, :group_id, :caption]

  field :id, 1, type: :string
  field :image, 2, type: :string
  field :group_id, 3, type: :string
  field :caption, 4, type: :string
end

defmodule InpowerGroupapi.JoinGroupRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          group_id: String.t(),
          answers: [InpowerGroupapi.Answer.t()]
        }

  defstruct [:user_id, :group_id, :answers]

  field :user_id, 1, type: :string
  field :group_id, 2, type: :string
  field :answers, 3, repeated: true, type: InpowerGroupapi.Answer
end

defmodule InpowerGroupapi.Answer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          question_id: integer,
          options: [InpowerGroupapi.Option.t()]
        }

  defstruct [:question_id, :options]

  field :question_id, 2, type: :int32
  field :options, 3, repeated: true, type: InpowerGroupapi.Option
end

defmodule InpowerGroupapi.Option do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: integer
        }

  defstruct [:id]

  field :id, 1, type: :int32
end

defmodule InpowerGroupapi.JoinGroupResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          member: InpowerGroupapi.Member.t() | nil
        }

  defstruct [:member]

  field :member, 1, type: InpowerGroupapi.Member
end

defmodule InpowerGroupapi.ListResponsePagination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          groups: InpowerGroupapi.ResponsePaged.t() | nil
        }

  defstruct [:groups]

  field :groups, 1, type: InpowerGroupapi.ResponsePaged
end

defmodule InpowerGroupapi.ResponsePaged do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          has_next: boolean,
          has_prev: boolean,
          prev_page: integer,
          list: [InpowerGroupapi.Group.t()],
          next_page: integer,
          first_page: integer,
          page: integer
        }

  defstruct [:has_next, :has_prev, :prev_page, :list, :next_page, :first_page, :page]

  field :has_next, 1, type: :bool
  field :has_prev, 2, type: :bool
  field :prev_page, 3, type: :int32
  field :list, 4, repeated: true, type: InpowerGroupapi.Group
  field :next_page, 5, type: :int32
  field :first_page, 6, type: :int32
  field :page, 7, type: :int32
end

defmodule InpowerGroupapi.GroupService.Service do
  @moduledoc false
  use GRPC.Service, name: "inpower_groupapi.GroupService"

  rpc :GetGroups, InpowerGroupapi.GetGroupsRequest, InpowerGroupapi.ListResponsePagination

  rpc :GetMyGroups, InpowerGroupapi.GetMyGroupsRequest, InpowerGroupapi.ListResponsePagination

  rpc :GetGroup, InpowerGroupapi.GetGroupRequest, InpowerGroupapi.GetGroupResponse

  rpc :CreateGroup, InpowerGroupapi.CreateGroupRequest, InpowerGroupapi.CreateGroupResponse

  rpc :EditGroup, InpowerGroupapi.EditGroupRequest, InpowerGroupapi.EditGroupResponse

  rpc :AddToGallery, InpowerGroupapi.AddToGalleryRequest, InpowerGroupapi.AddToGalleryResponse

  rpc :GetMembers, InpowerGroupapi.GetMembersRequest, InpowerGroupapi.GetMembersResponse

  rpc :AddMember, InpowerGroupapi.AddMemberRequest, InpowerGroupapi.AddMemberResponse

  rpc :RemoveMember, InpowerGroupapi.RemoveMemberRequest, InpowerGroupapi.RemoveMemberResponse

  rpc :JoinGroup, InpowerGroupapi.JoinGroupRequest, InpowerGroupapi.JoinGroupResponse

  rpc :GetCategories, InpowerGroupapi.GetCategoriesRequest, InpowerGroupapi.GetCategoriesResponse

  rpc :CreateCategory,
      InpowerGroupapi.CreateCategoryRequest,
      InpowerGroupapi.CreateCategoryResponse

  rpc :EditCategory, InpowerGroupapi.EditCategoryRequest, InpowerGroupapi.EditCategoryResponse

  rpc :DeleteCategory,
      InpowerGroupapi.DeleteCategoryRequest,
      InpowerGroupapi.DeleteCategoryResponse
end

defmodule InpowerGroupapi.GroupService.Stub do
  @moduledoc false
  use GRPC.Stub, service: InpowerGroupapi.GroupService.Service
end
