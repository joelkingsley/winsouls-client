import 'package:gql/ast.dart';

class Query$GetAllEvents {
  Query$GetAllEvents({
    required this.Event,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllEvents.fromJson(Map<String, dynamic> json) {
    final l$Event = json['Event'];
    final l$$__typename = json['__typename'];
    return Query$GetAllEvents(
      Event: (l$Event as List<dynamic>)
          .map((e) =>
              Query$GetAllEvents$Event.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllEvents$Event> Event;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$Event = Event;
    _resultData['Event'] = l$Event.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$Event = Event;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$Event.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllEvents) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$Event = Event;
    final lOther$Event = other.Event;
    if (l$Event.length != lOther$Event.length) {
      return false;
    }
    for (int i = 0; i < l$Event.length; i++) {
      final l$Event$entry = l$Event[i];
      final lOther$Event$entry = lOther$Event[i];
      if (l$Event$entry != lOther$Event$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllEvents on Query$GetAllEvents {
  CopyWith$Query$GetAllEvents<Query$GetAllEvents> get copyWith =>
      CopyWith$Query$GetAllEvents(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllEvents<TRes> {
  factory CopyWith$Query$GetAllEvents(
    Query$GetAllEvents instance,
    TRes Function(Query$GetAllEvents) then,
  ) = _CopyWithImpl$Query$GetAllEvents;

  factory CopyWith$Query$GetAllEvents.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllEvents;

  TRes call({
    List<Query$GetAllEvents$Event>? Event,
    String? $__typename,
  });
  TRes Event(
      Iterable<Query$GetAllEvents$Event> Function(
              Iterable<
                  CopyWith$Query$GetAllEvents$Event<Query$GetAllEvents$Event>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllEvents<TRes>
    implements CopyWith$Query$GetAllEvents<TRes> {
  _CopyWithImpl$Query$GetAllEvents(
    this._instance,
    this._then,
  );

  final Query$GetAllEvents _instance;

  final TRes Function(Query$GetAllEvents) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllEvents(
        Event: Event == _undefined || Event == null
            ? _instance.Event
            : (Event as List<Query$GetAllEvents$Event>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes Event(
          Iterable<Query$GetAllEvents$Event> Function(
                  Iterable<
                      CopyWith$Query$GetAllEvents$Event<
                          Query$GetAllEvents$Event>>)
              _fn) =>
      call(
          Event:
              _fn(_instance.Event.map((e) => CopyWith$Query$GetAllEvents$Event(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllEvents<TRes>
    implements CopyWith$Query$GetAllEvents<TRes> {
  _CopyWithStubImpl$Query$GetAllEvents(this._res);

  TRes _res;

  call({
    List<Query$GetAllEvents$Event>? Event,
    String? $__typename,
  }) =>
      _res;
  Event(_fn) => _res;
}

const documentNodeQueryGetAllEvents = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllEvents'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Event'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'organization'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'scheduledEndTimeInUtc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'scheduledStartTimeInUtc'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'Organization'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'coverPhotoUrl'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'whatToExpect'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'eventPlan'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$GetAllEvents$Event {
  Query$GetAllEvents$Event({
    required this.id,
    required this.name,
    this.organization,
    required this.scheduledEndTimeInUtc,
    required this.scheduledStartTimeInUtc,
    required this.type,
    this.Organization,
    required this.coverPhotoUrl,
    required this.whatToExpect,
    required this.eventPlan,
    this.$__typename = 'Event',
  });

  factory Query$GetAllEvents$Event.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$organization = json['organization'];
    final l$scheduledEndTimeInUtc = json['scheduledEndTimeInUtc'];
    final l$scheduledStartTimeInUtc = json['scheduledStartTimeInUtc'];
    final l$type = json['type'];
    final l$Organization = json['Organization'];
    final l$coverPhotoUrl = json['coverPhotoUrl'];
    final l$whatToExpect = json['whatToExpect'];
    final l$eventPlan = json['eventPlan'];
    final l$$__typename = json['__typename'];
    return Query$GetAllEvents$Event(
      id: (l$id as String),
      name: (l$name as String),
      organization: (l$organization as String?),
      scheduledEndTimeInUtc: (l$scheduledEndTimeInUtc as String),
      scheduledStartTimeInUtc: (l$scheduledStartTimeInUtc as String),
      type: (l$type as String),
      Organization: l$Organization == null
          ? null
          : Query$GetAllEvents$Event$Organization.fromJson(
              (l$Organization as Map<String, dynamic>)),
      coverPhotoUrl: (l$coverPhotoUrl as String),
      whatToExpect: (l$whatToExpect as String),
      eventPlan: (l$eventPlan as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? organization;

  final String scheduledEndTimeInUtc;

  final String scheduledStartTimeInUtc;

  final String type;

  final Query$GetAllEvents$Event$Organization? Organization;

  final String coverPhotoUrl;

  final String whatToExpect;

  final String eventPlan;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$organization = organization;
    _resultData['organization'] = l$organization;
    final l$scheduledEndTimeInUtc = scheduledEndTimeInUtc;
    _resultData['scheduledEndTimeInUtc'] = l$scheduledEndTimeInUtc;
    final l$scheduledStartTimeInUtc = scheduledStartTimeInUtc;
    _resultData['scheduledStartTimeInUtc'] = l$scheduledStartTimeInUtc;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$Organization = Organization;
    _resultData['Organization'] = l$Organization?.toJson();
    final l$coverPhotoUrl = coverPhotoUrl;
    _resultData['coverPhotoUrl'] = l$coverPhotoUrl;
    final l$whatToExpect = whatToExpect;
    _resultData['whatToExpect'] = l$whatToExpect;
    final l$eventPlan = eventPlan;
    _resultData['eventPlan'] = l$eventPlan;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$organization = organization;
    final l$scheduledEndTimeInUtc = scheduledEndTimeInUtc;
    final l$scheduledStartTimeInUtc = scheduledStartTimeInUtc;
    final l$type = type;
    final l$Organization = Organization;
    final l$coverPhotoUrl = coverPhotoUrl;
    final l$whatToExpect = whatToExpect;
    final l$eventPlan = eventPlan;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$organization,
      l$scheduledEndTimeInUtc,
      l$scheduledStartTimeInUtc,
      l$type,
      l$Organization,
      l$coverPhotoUrl,
      l$whatToExpect,
      l$eventPlan,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllEvents$Event) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$organization = organization;
    final lOther$organization = other.organization;
    if (l$organization != lOther$organization) {
      return false;
    }
    final l$scheduledEndTimeInUtc = scheduledEndTimeInUtc;
    final lOther$scheduledEndTimeInUtc = other.scheduledEndTimeInUtc;
    if (l$scheduledEndTimeInUtc != lOther$scheduledEndTimeInUtc) {
      return false;
    }
    final l$scheduledStartTimeInUtc = scheduledStartTimeInUtc;
    final lOther$scheduledStartTimeInUtc = other.scheduledStartTimeInUtc;
    if (l$scheduledStartTimeInUtc != lOther$scheduledStartTimeInUtc) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$Organization = Organization;
    final lOther$Organization = other.Organization;
    if (l$Organization != lOther$Organization) {
      return false;
    }
    final l$coverPhotoUrl = coverPhotoUrl;
    final lOther$coverPhotoUrl = other.coverPhotoUrl;
    if (l$coverPhotoUrl != lOther$coverPhotoUrl) {
      return false;
    }
    final l$whatToExpect = whatToExpect;
    final lOther$whatToExpect = other.whatToExpect;
    if (l$whatToExpect != lOther$whatToExpect) {
      return false;
    }
    final l$eventPlan = eventPlan;
    final lOther$eventPlan = other.eventPlan;
    if (l$eventPlan != lOther$eventPlan) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllEvents$Event
    on Query$GetAllEvents$Event {
  CopyWith$Query$GetAllEvents$Event<Query$GetAllEvents$Event> get copyWith =>
      CopyWith$Query$GetAllEvents$Event(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllEvents$Event<TRes> {
  factory CopyWith$Query$GetAllEvents$Event(
    Query$GetAllEvents$Event instance,
    TRes Function(Query$GetAllEvents$Event) then,
  ) = _CopyWithImpl$Query$GetAllEvents$Event;

  factory CopyWith$Query$GetAllEvents$Event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllEvents$Event;

  TRes call({
    String? id,
    String? name,
    String? organization,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    String? type,
    Query$GetAllEvents$Event$Organization? Organization,
    String? coverPhotoUrl,
    String? whatToExpect,
    String? eventPlan,
    String? $__typename,
  });
  CopyWith$Query$GetAllEvents$Event$Organization<TRes> get Organization;
}

class _CopyWithImpl$Query$GetAllEvents$Event<TRes>
    implements CopyWith$Query$GetAllEvents$Event<TRes> {
  _CopyWithImpl$Query$GetAllEvents$Event(
    this._instance,
    this._then,
  );

  final Query$GetAllEvents$Event _instance;

  final TRes Function(Query$GetAllEvents$Event) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? organization = _undefined,
    Object? scheduledEndTimeInUtc = _undefined,
    Object? scheduledStartTimeInUtc = _undefined,
    Object? type = _undefined,
    Object? Organization = _undefined,
    Object? coverPhotoUrl = _undefined,
    Object? whatToExpect = _undefined,
    Object? eventPlan = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllEvents$Event(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        organization: organization == _undefined
            ? _instance.organization
            : (organization as String?),
        scheduledEndTimeInUtc:
            scheduledEndTimeInUtc == _undefined || scheduledEndTimeInUtc == null
                ? _instance.scheduledEndTimeInUtc
                : (scheduledEndTimeInUtc as String),
        scheduledStartTimeInUtc: scheduledStartTimeInUtc == _undefined ||
                scheduledStartTimeInUtc == null
            ? _instance.scheduledStartTimeInUtc
            : (scheduledStartTimeInUtc as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        Organization: Organization == _undefined
            ? _instance.Organization
            : (Organization as Query$GetAllEvents$Event$Organization?),
        coverPhotoUrl: coverPhotoUrl == _undefined || coverPhotoUrl == null
            ? _instance.coverPhotoUrl
            : (coverPhotoUrl as String),
        whatToExpect: whatToExpect == _undefined || whatToExpect == null
            ? _instance.whatToExpect
            : (whatToExpect as String),
        eventPlan: eventPlan == _undefined || eventPlan == null
            ? _instance.eventPlan
            : (eventPlan as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetAllEvents$Event$Organization<TRes> get Organization {
    final local$Organization = _instance.Organization;
    return local$Organization == null
        ? CopyWith$Query$GetAllEvents$Event$Organization.stub(_then(_instance))
        : CopyWith$Query$GetAllEvents$Event$Organization(
            local$Organization, (e) => call(Organization: e));
  }
}

class _CopyWithStubImpl$Query$GetAllEvents$Event<TRes>
    implements CopyWith$Query$GetAllEvents$Event<TRes> {
  _CopyWithStubImpl$Query$GetAllEvents$Event(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? organization,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    String? type,
    Query$GetAllEvents$Event$Organization? Organization,
    String? coverPhotoUrl,
    String? whatToExpect,
    String? eventPlan,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetAllEvents$Event$Organization<TRes> get Organization =>
      CopyWith$Query$GetAllEvents$Event$Organization.stub(_res);
}

class Query$GetAllEvents$Event$Organization {
  Query$GetAllEvents$Event$Organization({
    required this.name,
    required this.type,
    this.$__typename = 'Organization',
  });

  factory Query$GetAllEvents$Event$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$$__typename = json['__typename'];
    return Query$GetAllEvents$Event$Organization(
      name: (l$name as String),
      type: (l$type as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = l$type;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllEvents$Event$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllEvents$Event$Organization
    on Query$GetAllEvents$Event$Organization {
  CopyWith$Query$GetAllEvents$Event$Organization<
          Query$GetAllEvents$Event$Organization>
      get copyWith => CopyWith$Query$GetAllEvents$Event$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllEvents$Event$Organization<TRes> {
  factory CopyWith$Query$GetAllEvents$Event$Organization(
    Query$GetAllEvents$Event$Organization instance,
    TRes Function(Query$GetAllEvents$Event$Organization) then,
  ) = _CopyWithImpl$Query$GetAllEvents$Event$Organization;

  factory CopyWith$Query$GetAllEvents$Event$Organization.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllEvents$Event$Organization;

  TRes call({
    String? name,
    String? type,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllEvents$Event$Organization<TRes>
    implements CopyWith$Query$GetAllEvents$Event$Organization<TRes> {
  _CopyWithImpl$Query$GetAllEvents$Event$Organization(
    this._instance,
    this._then,
  );

  final Query$GetAllEvents$Event$Organization _instance;

  final TRes Function(Query$GetAllEvents$Event$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllEvents$Event$Organization(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllEvents$Event$Organization<TRes>
    implements CopyWith$Query$GetAllEvents$Event$Organization<TRes> {
  _CopyWithStubImpl$Query$GetAllEvents$Event$Organization(this._res);

  TRes _res;

  call({
    String? name,
    String? type,
    String? $__typename,
  }) =>
      _res;
}
