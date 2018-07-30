//  This file was automatically generated and should not be edited.

import Apollo

public final class CreateAttendeeMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateAttendee($name: String!) {\n  createAttendee(name: $name) {\n    __typename\n    id\n    name\n  }\n}"

  public var name: String

  public init(name: String) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createAttendee", arguments: ["name": GraphQLVariable("name")], type: .object(CreateAttendee.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createAttendee: CreateAttendee? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createAttendee": createAttendee.flatMap { $0.snapshot }])
    }

    public var createAttendee: CreateAttendee? {
      get {
        return (snapshot["createAttendee"] as? Snapshot).flatMap { CreateAttendee(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createAttendee")
      }
    }

    public struct CreateAttendee: GraphQLSelectionSet {
      public static let possibleTypes = ["Attendee"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, name: String) {
        self.init(snapshot: ["__typename": "Attendee", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}