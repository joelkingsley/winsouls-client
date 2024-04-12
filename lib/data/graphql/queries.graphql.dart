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

class Variables$Query$GetEventDetail {
  factory Variables$Query$GetEventDetail({required String eventId}) =>
      Variables$Query$GetEventDetail._({
        r'eventId': eventId,
      });

  Variables$Query$GetEventDetail._(this._$data);

  factory Variables$Query$GetEventDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$eventId = data['eventId'];
    result$data['eventId'] = (l$eventId as String);
    return Variables$Query$GetEventDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  String get eventId => (_$data['eventId'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$eventId = eventId;
    result$data['eventId'] = l$eventId;
    return result$data;
  }

  CopyWith$Variables$Query$GetEventDetail<Variables$Query$GetEventDetail>
      get copyWith => CopyWith$Variables$Query$GetEventDetail(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetEventDetail) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$eventId = eventId;
    final lOther$eventId = other.eventId;
    if (l$eventId != lOther$eventId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$eventId = eventId;
    return Object.hashAll([l$eventId]);
  }
}

abstract class CopyWith$Variables$Query$GetEventDetail<TRes> {
  factory CopyWith$Variables$Query$GetEventDetail(
    Variables$Query$GetEventDetail instance,
    TRes Function(Variables$Query$GetEventDetail) then,
  ) = _CopyWithImpl$Variables$Query$GetEventDetail;

  factory CopyWith$Variables$Query$GetEventDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetEventDetail;

  TRes call({String? eventId});
}

class _CopyWithImpl$Variables$Query$GetEventDetail<TRes>
    implements CopyWith$Variables$Query$GetEventDetail<TRes> {
  _CopyWithImpl$Variables$Query$GetEventDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$GetEventDetail _instance;

  final TRes Function(Variables$Query$GetEventDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? eventId = _undefined}) =>
      _then(Variables$Query$GetEventDetail._({
        ..._instance._$data,
        if (eventId != _undefined && eventId != null)
          'eventId': (eventId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetEventDetail<TRes>
    implements CopyWith$Variables$Query$GetEventDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$GetEventDetail(this._res);

  TRes _res;

  call({String? eventId}) => _res;
}

class Query$GetEventDetail {
  Query$GetEventDetail({
    required this.Event,
    this.$__typename = 'query_root',
  });

  factory Query$GetEventDetail.fromJson(Map<String, dynamic> json) {
    final l$Event = json['Event'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail(
      Event: (l$Event as List<dynamic>)
          .map((e) =>
              Query$GetEventDetail$Event.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetEventDetail$Event> Event;

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
    if (!(other is Query$GetEventDetail) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$GetEventDetail on Query$GetEventDetail {
  CopyWith$Query$GetEventDetail<Query$GetEventDetail> get copyWith =>
      CopyWith$Query$GetEventDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetEventDetail<TRes> {
  factory CopyWith$Query$GetEventDetail(
    Query$GetEventDetail instance,
    TRes Function(Query$GetEventDetail) then,
  ) = _CopyWithImpl$Query$GetEventDetail;

  factory CopyWith$Query$GetEventDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail;

  TRes call({
    List<Query$GetEventDetail$Event>? Event,
    String? $__typename,
  });
  TRes Event(
      Iterable<Query$GetEventDetail$Event> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event<
                      Query$GetEventDetail$Event>>)
          _fn);
}

class _CopyWithImpl$Query$GetEventDetail<TRes>
    implements CopyWith$Query$GetEventDetail<TRes> {
  _CopyWithImpl$Query$GetEventDetail(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail _instance;

  final TRes Function(Query$GetEventDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? Event = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEventDetail(
        Event: Event == _undefined || Event == null
            ? _instance.Event
            : (Event as List<Query$GetEventDetail$Event>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes Event(
          Iterable<Query$GetEventDetail$Event> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event<
                          Query$GetEventDetail$Event>>)
              _fn) =>
      call(
          Event: _fn(
              _instance.Event.map((e) => CopyWith$Query$GetEventDetail$Event(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetEventDetail<TRes>
    implements CopyWith$Query$GetEventDetail<TRes> {
  _CopyWithStubImpl$Query$GetEventDetail(this._res);

  TRes _res;

  call({
    List<Query$GetEventDetail$Event>? Event,
    String? $__typename,
  }) =>
      _res;
  Event(_fn) => _res;
}

const documentNodeQueryGetEventDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEventDetail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'eventId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'Event'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'eventId')),
                  )
                ]),
              )
            ]),
          )
        ],
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
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
            name: NameNode(value: 'SoulWinningSessions'),
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
                name: NameNode(value: 'SoulWinningSessionGroups_aggregate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'aggregate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'count'),
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
              FieldNode(
                name: NameNode(value: 'SoulWinningSessionGroups'),
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
                    name: NameNode(value: 'session'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '_SoulWinningSessionGroup_members'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'User'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'email'),
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
                            name: NameNode(value: 'id'),
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
                  FieldNode(
                    name: NameNode(value: 'MapArea'),
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
                        name: NameNode(value: 'polygonGeoJson'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'Map'),
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
                  FieldNode(
                    name: NameNode(value: 'Encounters_aggregate'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'aggregate'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'count'),
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
                  FieldNode(
                    name: NameNode(value: 'Encounters'),
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
                        name: NameNode(value: 'result'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'houseAddress'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'encounterTimeInUtc'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'SavedPeople'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'email'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
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
                            name: NameNode(value: 'phone'),
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

class Query$GetEventDetail$Event {
  Query$GetEventDetail$Event({
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
    required this.SoulWinningSessions,
    this.$__typename = 'Event',
  });

  factory Query$GetEventDetail$Event.fromJson(Map<String, dynamic> json) {
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
    final l$SoulWinningSessions = json['SoulWinningSessions'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event(
      id: (l$id as String),
      name: (l$name as String),
      organization: (l$organization as String?),
      scheduledEndTimeInUtc: (l$scheduledEndTimeInUtc as String),
      scheduledStartTimeInUtc: (l$scheduledStartTimeInUtc as String),
      type: (l$type as String),
      Organization: l$Organization == null
          ? null
          : Query$GetEventDetail$Event$Organization.fromJson(
              (l$Organization as Map<String, dynamic>)),
      coverPhotoUrl: (l$coverPhotoUrl as String),
      whatToExpect: (l$whatToExpect as String),
      eventPlan: (l$eventPlan as String),
      SoulWinningSessions: (l$SoulWinningSessions as List<dynamic>)
          .map((e) => Query$GetEventDetail$Event$SoulWinningSessions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? organization;

  final String scheduledEndTimeInUtc;

  final String scheduledStartTimeInUtc;

  final String type;

  final Query$GetEventDetail$Event$Organization? Organization;

  final String coverPhotoUrl;

  final String whatToExpect;

  final String eventPlan;

  final List<Query$GetEventDetail$Event$SoulWinningSessions>
      SoulWinningSessions;

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
    final l$SoulWinningSessions = SoulWinningSessions;
    _resultData['SoulWinningSessions'] =
        l$SoulWinningSessions.map((e) => e.toJson()).toList();
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
    final l$SoulWinningSessions = SoulWinningSessions;
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
      Object.hashAll(l$SoulWinningSessions.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEventDetail$Event) ||
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
    final l$SoulWinningSessions = SoulWinningSessions;
    final lOther$SoulWinningSessions = other.SoulWinningSessions;
    if (l$SoulWinningSessions.length != lOther$SoulWinningSessions.length) {
      return false;
    }
    for (int i = 0; i < l$SoulWinningSessions.length; i++) {
      final l$SoulWinningSessions$entry = l$SoulWinningSessions[i];
      final lOther$SoulWinningSessions$entry = lOther$SoulWinningSessions[i];
      if (l$SoulWinningSessions$entry != lOther$SoulWinningSessions$entry) {
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

extension UtilityExtension$Query$GetEventDetail$Event
    on Query$GetEventDetail$Event {
  CopyWith$Query$GetEventDetail$Event<Query$GetEventDetail$Event>
      get copyWith => CopyWith$Query$GetEventDetail$Event(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event<TRes> {
  factory CopyWith$Query$GetEventDetail$Event(
    Query$GetEventDetail$Event instance,
    TRes Function(Query$GetEventDetail$Event) then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event;

  factory CopyWith$Query$GetEventDetail$Event.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event;

  TRes call({
    String? id,
    String? name,
    String? organization,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    String? type,
    Query$GetEventDetail$Event$Organization? Organization,
    String? coverPhotoUrl,
    String? whatToExpect,
    String? eventPlan,
    List<Query$GetEventDetail$Event$SoulWinningSessions>? SoulWinningSessions,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$Organization<TRes> get Organization;
  TRes SoulWinningSessions(
      Iterable<Query$GetEventDetail$Event$SoulWinningSessions> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<
                      Query$GetEventDetail$Event$SoulWinningSessions>>)
          _fn);
}

class _CopyWithImpl$Query$GetEventDetail$Event<TRes>
    implements CopyWith$Query$GetEventDetail$Event<TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event _instance;

  final TRes Function(Query$GetEventDetail$Event) _then;

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
    Object? SoulWinningSessions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEventDetail$Event(
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
            : (Organization as Query$GetEventDetail$Event$Organization?),
        coverPhotoUrl: coverPhotoUrl == _undefined || coverPhotoUrl == null
            ? _instance.coverPhotoUrl
            : (coverPhotoUrl as String),
        whatToExpect: whatToExpect == _undefined || whatToExpect == null
            ? _instance.whatToExpect
            : (whatToExpect as String),
        eventPlan: eventPlan == _undefined || eventPlan == null
            ? _instance.eventPlan
            : (eventPlan as String),
        SoulWinningSessions:
            SoulWinningSessions == _undefined || SoulWinningSessions == null
                ? _instance.SoulWinningSessions
                : (SoulWinningSessions
                    as List<Query$GetEventDetail$Event$SoulWinningSessions>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$Organization<TRes> get Organization {
    final local$Organization = _instance.Organization;
    return local$Organization == null
        ? CopyWith$Query$GetEventDetail$Event$Organization.stub(
            _then(_instance))
        : CopyWith$Query$GetEventDetail$Event$Organization(
            local$Organization, (e) => call(Organization: e));
  }

  TRes SoulWinningSessions(
          Iterable<Query$GetEventDetail$Event$SoulWinningSessions> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<
                          Query$GetEventDetail$Event$SoulWinningSessions>>)
              _fn) =>
      call(
          SoulWinningSessions: _fn(_instance.SoulWinningSessions.map(
              (e) => CopyWith$Query$GetEventDetail$Event$SoulWinningSessions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetEventDetail$Event<TRes>
    implements CopyWith$Query$GetEventDetail$Event<TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? organization,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    String? type,
    Query$GetEventDetail$Event$Organization? Organization,
    String? coverPhotoUrl,
    String? whatToExpect,
    String? eventPlan,
    List<Query$GetEventDetail$Event$SoulWinningSessions>? SoulWinningSessions,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$Organization<TRes> get Organization =>
      CopyWith$Query$GetEventDetail$Event$Organization.stub(_res);
  SoulWinningSessions(_fn) => _res;
}

class Query$GetEventDetail$Event$Organization {
  Query$GetEventDetail$Event$Organization({
    required this.type,
    required this.id,
    required this.name,
    this.$__typename = 'Organization',
  });

  factory Query$GetEventDetail$Event$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$type = json['type'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$Organization(
      type: (l$type as String),
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String type;

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$type = type;
    _resultData['type'] = l$type;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$type = type;
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$type,
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEventDetail$Event$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEventDetail$Event$Organization
    on Query$GetEventDetail$Event$Organization {
  CopyWith$Query$GetEventDetail$Event$Organization<
          Query$GetEventDetail$Event$Organization>
      get copyWith => CopyWith$Query$GetEventDetail$Event$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$Organization<TRes> {
  factory CopyWith$Query$GetEventDetail$Event$Organization(
    Query$GetEventDetail$Event$Organization instance,
    TRes Function(Query$GetEventDetail$Event$Organization) then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$Organization;

  factory CopyWith$Query$GetEventDetail$Event$Organization.stub(TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$Organization;

  TRes call({
    String? type,
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$Organization<TRes>
    implements CopyWith$Query$GetEventDetail$Event$Organization<TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$Organization(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$Organization _instance;

  final TRes Function(Query$GetEventDetail$Event$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? type = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEventDetail$Event$Organization(
        type: type == _undefined || type == null
            ? _instance.type
            : (type as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$Organization<TRes>
    implements CopyWith$Query$GetEventDetail$Event$Organization<TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$Organization(this._res);

  TRes _res;

  call({
    String? type,
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions {
  Query$GetEventDetail$Event$SoulWinningSessions({
    required this.id,
    required this.name,
    required this.scheduledEndTimeInUtc,
    required this.scheduledStartTimeInUtc,
    required this.SoulWinningSessionGroups_aggregate,
    required this.SoulWinningSessionGroups,
    this.$__typename = 'SoulWinningSession',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$scheduledEndTimeInUtc = json['scheduledEndTimeInUtc'];
    final l$scheduledStartTimeInUtc = json['scheduledStartTimeInUtc'];
    final l$SoulWinningSessionGroups_aggregate =
        json['SoulWinningSessionGroups_aggregate'];
    final l$SoulWinningSessionGroups = json['SoulWinningSessionGroups'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions(
      id: (l$id as String),
      name: (l$name as String),
      scheduledEndTimeInUtc: (l$scheduledEndTimeInUtc as String),
      scheduledStartTimeInUtc: (l$scheduledStartTimeInUtc as String),
      SoulWinningSessionGroups_aggregate:
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
              .fromJson((l$SoulWinningSessionGroups_aggregate
                  as Map<String, dynamic>)),
      SoulWinningSessionGroups: (l$SoulWinningSessionGroups as List<dynamic>)
          .map((e) =>
              Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String scheduledEndTimeInUtc;

  final String scheduledStartTimeInUtc;

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
      SoulWinningSessionGroups_aggregate;

  final List<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>
      SoulWinningSessionGroups;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$scheduledEndTimeInUtc = scheduledEndTimeInUtc;
    _resultData['scheduledEndTimeInUtc'] = l$scheduledEndTimeInUtc;
    final l$scheduledStartTimeInUtc = scheduledStartTimeInUtc;
    _resultData['scheduledStartTimeInUtc'] = l$scheduledStartTimeInUtc;
    final l$SoulWinningSessionGroups_aggregate =
        SoulWinningSessionGroups_aggregate;
    _resultData['SoulWinningSessionGroups_aggregate'] =
        l$SoulWinningSessionGroups_aggregate.toJson();
    final l$SoulWinningSessionGroups = SoulWinningSessionGroups;
    _resultData['SoulWinningSessionGroups'] =
        l$SoulWinningSessionGroups.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$scheduledEndTimeInUtc = scheduledEndTimeInUtc;
    final l$scheduledStartTimeInUtc = scheduledStartTimeInUtc;
    final l$SoulWinningSessionGroups_aggregate =
        SoulWinningSessionGroups_aggregate;
    final l$SoulWinningSessionGroups = SoulWinningSessionGroups;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$scheduledEndTimeInUtc,
      l$scheduledStartTimeInUtc,
      l$SoulWinningSessionGroups_aggregate,
      Object.hashAll(l$SoulWinningSessionGroups.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetEventDetail$Event$SoulWinningSessions) ||
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
    final l$SoulWinningSessionGroups_aggregate =
        SoulWinningSessionGroups_aggregate;
    final lOther$SoulWinningSessionGroups_aggregate =
        other.SoulWinningSessionGroups_aggregate;
    if (l$SoulWinningSessionGroups_aggregate !=
        lOther$SoulWinningSessionGroups_aggregate) {
      return false;
    }
    final l$SoulWinningSessionGroups = SoulWinningSessionGroups;
    final lOther$SoulWinningSessionGroups = other.SoulWinningSessionGroups;
    if (l$SoulWinningSessionGroups.length !=
        lOther$SoulWinningSessionGroups.length) {
      return false;
    }
    for (int i = 0; i < l$SoulWinningSessionGroups.length; i++) {
      final l$SoulWinningSessionGroups$entry = l$SoulWinningSessionGroups[i];
      final lOther$SoulWinningSessionGroups$entry =
          lOther$SoulWinningSessionGroups[i];
      if (l$SoulWinningSessionGroups$entry !=
          lOther$SoulWinningSessionGroups$entry) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions
    on Query$GetEventDetail$Event$SoulWinningSessions {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<
          Query$GetEventDetail$Event$SoulWinningSessions>
      get copyWith => CopyWith$Query$GetEventDetail$Event$SoulWinningSessions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions(
    Query$GetEventDetail$Event$SoulWinningSessions instance,
    TRes Function(Query$GetEventDetail$Event$SoulWinningSessions) then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions;

  TRes call({
    String? id,
    String? name,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate?
        SoulWinningSessionGroups_aggregate,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>?
        SoulWinningSessionGroups,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
      TRes> get SoulWinningSessionGroups_aggregate;
  TRes SoulWinningSessionGroups(
      Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
                      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>>)
          _fn);
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions<TRes>
    implements CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions _instance;

  final TRes Function(Query$GetEventDetail$Event$SoulWinningSessions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? scheduledEndTimeInUtc = _undefined,
    Object? scheduledStartTimeInUtc = _undefined,
    Object? SoulWinningSessionGroups_aggregate = _undefined,
    Object? SoulWinningSessionGroups = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetEventDetail$Event$SoulWinningSessions(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        scheduledEndTimeInUtc:
            scheduledEndTimeInUtc == _undefined || scheduledEndTimeInUtc == null
                ? _instance.scheduledEndTimeInUtc
                : (scheduledEndTimeInUtc as String),
        scheduledStartTimeInUtc: scheduledStartTimeInUtc == _undefined ||
                scheduledStartTimeInUtc == null
            ? _instance.scheduledStartTimeInUtc
            : (scheduledStartTimeInUtc as String),
        SoulWinningSessionGroups_aggregate: SoulWinningSessionGroups_aggregate ==
                    _undefined ||
                SoulWinningSessionGroups_aggregate == null
            ? _instance.SoulWinningSessionGroups_aggregate
            : (SoulWinningSessionGroups_aggregate
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate),
        SoulWinningSessionGroups: SoulWinningSessionGroups == _undefined ||
                SoulWinningSessionGroups == null
            ? _instance.SoulWinningSessionGroups
            : (SoulWinningSessionGroups as List<
                Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
      TRes> get SoulWinningSessionGroups_aggregate {
    final local$SoulWinningSessionGroups_aggregate =
        _instance.SoulWinningSessionGroups_aggregate;
    return CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
        local$SoulWinningSessionGroups_aggregate,
        (e) => call(SoulWinningSessionGroups_aggregate: e));
  }

  TRes SoulWinningSessionGroups(
          Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
                          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>>)
              _fn) =>
      call(
          SoulWinningSessionGroups: _fn(_instance.SoulWinningSessionGroups.map(
              (e) =>
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions<TRes>
    implements CopyWith$Query$GetEventDetail$Event$SoulWinningSessions<TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? scheduledEndTimeInUtc,
    String? scheduledStartTimeInUtc,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate?
        SoulWinningSessionGroups_aggregate,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>?
        SoulWinningSessionGroups,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
          TRes>
      get SoulWinningSessionGroups_aggregate =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
              .stub(_res);
  SoulWinningSessionGroups(_fn) => _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate({
    this.aggregate,
    this.$__typename = 'SoulWinningSessionGroup_aggregate',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate;

  TRes call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate(
      this._res);

  TRes _res;

  call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
              .stub(_res);
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate({
    required this.count,
    this.$__typename = 'SoulWinningSessionGroup_aggregate_fields',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups({
    required this.id,
    this.session,
    required this.$_SoulWinningSessionGroup_members,
    this.MapArea,
    required this.Encounters_aggregate,
    required this.Encounters,
    this.$__typename = 'SoulWinningSessionGroup',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$session = json['session'];
    final l$$_SoulWinningSessionGroup_members =
        json['_SoulWinningSessionGroup_members'];
    final l$MapArea = json['MapArea'];
    final l$Encounters_aggregate = json['Encounters_aggregate'];
    final l$Encounters = json['Encounters'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
      id: (l$id as String),
      session: (l$session as String?),
      $_SoulWinningSessionGroup_members: (l$$_SoulWinningSessionGroup_members
              as List<dynamic>)
          .map((e) =>
              Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      MapArea: l$MapArea == null
          ? null
          : Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
              .fromJson((l$MapArea as Map<String, dynamic>)),
      Encounters_aggregate:
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
              .fromJson((l$Encounters_aggregate as Map<String, dynamic>)),
      Encounters: (l$Encounters as List<dynamic>)
          .map((e) =>
              Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? session;

  final List<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>
      $_SoulWinningSessionGroup_members;

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea?
      MapArea;

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
      Encounters_aggregate;

  final List<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>
      Encounters;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$session = session;
    _resultData['session'] = l$session;
    final l$$_SoulWinningSessionGroup_members =
        $_SoulWinningSessionGroup_members;
    _resultData['_SoulWinningSessionGroup_members'] =
        l$$_SoulWinningSessionGroup_members.map((e) => e.toJson()).toList();
    final l$MapArea = MapArea;
    _resultData['MapArea'] = l$MapArea?.toJson();
    final l$Encounters_aggregate = Encounters_aggregate;
    _resultData['Encounters_aggregate'] = l$Encounters_aggregate.toJson();
    final l$Encounters = Encounters;
    _resultData['Encounters'] = l$Encounters.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$session = session;
    final l$$_SoulWinningSessionGroup_members =
        $_SoulWinningSessionGroup_members;
    final l$MapArea = MapArea;
    final l$Encounters_aggregate = Encounters_aggregate;
    final l$Encounters = Encounters;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$session,
      Object.hashAll(l$$_SoulWinningSessionGroup_members.map((v) => v)),
      l$MapArea,
      l$Encounters_aggregate,
      Object.hashAll(l$Encounters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$session = session;
    final lOther$session = other.session;
    if (l$session != lOther$session) {
      return false;
    }
    final l$$_SoulWinningSessionGroup_members =
        $_SoulWinningSessionGroup_members;
    final lOther$$_SoulWinningSessionGroup_members =
        other.$_SoulWinningSessionGroup_members;
    if (l$$_SoulWinningSessionGroup_members.length !=
        lOther$$_SoulWinningSessionGroup_members.length) {
      return false;
    }
    for (int i = 0; i < l$$_SoulWinningSessionGroup_members.length; i++) {
      final l$$_SoulWinningSessionGroup_members$entry =
          l$$_SoulWinningSessionGroup_members[i];
      final lOther$$_SoulWinningSessionGroup_members$entry =
          lOther$$_SoulWinningSessionGroup_members[i];
      if (l$$_SoulWinningSessionGroup_members$entry !=
          lOther$$_SoulWinningSessionGroup_members$entry) {
        return false;
      }
    }
    final l$MapArea = MapArea;
    final lOther$MapArea = other.MapArea;
    if (l$MapArea != lOther$MapArea) {
      return false;
    }
    final l$Encounters_aggregate = Encounters_aggregate;
    final lOther$Encounters_aggregate = other.Encounters_aggregate;
    if (l$Encounters_aggregate != lOther$Encounters_aggregate) {
      return false;
    }
    final l$Encounters = Encounters;
    final lOther$Encounters = other.Encounters;
    if (l$Encounters.length != lOther$Encounters.length) {
      return false;
    }
    for (int i = 0; i < l$Encounters.length; i++) {
      final l$Encounters$entry = l$Encounters[i];
      final lOther$Encounters$entry = lOther$Encounters[i];
      if (l$Encounters$entry != lOther$Encounters$entry) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups;

  TRes call({
    String? id,
    String? session,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>?
        $_SoulWinningSessionGroup_members,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea?
        MapArea,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate?
        Encounters_aggregate,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>?
        Encounters,
    String? $__typename,
  });
  TRes $_SoulWinningSessionGroup_members(
      Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
                      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>>)
          _fn);
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
      TRes> get MapArea;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
      TRes> get Encounters_aggregate;
  TRes Encounters(
      Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
                      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>>)
          _fn);
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? session = _undefined,
    Object? $_SoulWinningSessionGroup_members = _undefined,
    Object? MapArea = _undefined,
    Object? Encounters_aggregate = _undefined,
    Object? Encounters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        session:
            session == _undefined ? _instance.session : (session as String?),
        $_SoulWinningSessionGroup_members: $_SoulWinningSessionGroup_members ==
                    _undefined ||
                $_SoulWinningSessionGroup_members == null
            ? _instance.$_SoulWinningSessionGroup_members
            : ($_SoulWinningSessionGroup_members as List<
                Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>),
        MapArea: MapArea == _undefined
            ? _instance.MapArea
            : (MapArea
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea?),
        Encounters_aggregate: Encounters_aggregate == _undefined ||
                Encounters_aggregate == null
            ? _instance.Encounters_aggregate
            : (Encounters_aggregate
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate),
        Encounters: Encounters == _undefined || Encounters == null
            ? _instance.Encounters
            : (Encounters as List<
                Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes $_SoulWinningSessionGroup_members(
          Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
                          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>>)
              _fn) =>
      call(
          $_SoulWinningSessionGroup_members: _fn(
              _instance.$_SoulWinningSessionGroup_members.map((e) =>
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
      TRes> get MapArea {
    final local$MapArea = _instance.MapArea;
    return local$MapArea == null
        ? CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
            .stub(_then(_instance))
        : CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
            local$MapArea, (e) => call(MapArea: e));
  }

  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
      TRes> get Encounters_aggregate {
    final local$Encounters_aggregate = _instance.Encounters_aggregate;
    return CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
        local$Encounters_aggregate, (e) => call(Encounters_aggregate: e));
  }

  TRes Encounters(
          Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
                          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>>)
              _fn) =>
      call(
          Encounters: _fn(_instance.Encounters.map((e) =>
              CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups(
      this._res);

  TRes _res;

  call({
    String? id,
    String? session,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>?
        $_SoulWinningSessionGroup_members,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea?
        MapArea,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate?
        Encounters_aggregate,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>?
        Encounters,
    String? $__typename,
  }) =>
      _res;
  $_SoulWinningSessionGroup_members(_fn) => _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
          TRes>
      get MapArea =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
              .stub(_res);
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
          TRes>
      get Encounters_aggregate =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
              .stub(_res);
  Encounters(_fn) => _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members({
    required this.User,
    this.$__typename = '_SoulWinningSessionGroup_members',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members.fromJson(
      Map<String, dynamic> json) {
    final l$User = json['User'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
      User:
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
              .fromJson((l$User as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
      User;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$User = User;
    _resultData['User'] = l$User.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$User = User;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$User,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$User = User;
    final lOther$User = other.User;
    if (l$User != lOther$User) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members;

  TRes call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User?
        User,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
      TRes> get User;
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? User = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
        User: User == _undefined || User == null
            ? _instance.User
            : (User
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
      TRes> get User {
    final local$User = _instance.User;
    return CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
        local$User, (e) => call(User: e));
  }
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members(
      this._res);

  TRes _res;

  call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User?
        User,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
          TRes>
      get User =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
              .stub(_res);
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User({
    required this.email,
    required this.name,
    required this.id,
    this.$__typename = 'User',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User.fromJson(
      Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
      email: (l$email as String),
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$name,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User;

  TRes call({
    String? email,
    String? name,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$_SoulWinningSessionGroup_members$User(
      this._res);

  TRes _res;

  call({
    String? email,
    String? name,
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea({
    required this.id,
    required this.name,
    this.polygonGeoJson,
    this.$Map,
    this.$__typename = 'MapArea',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$polygonGeoJson = json['polygonGeoJson'];
    final l$$Map = json['Map'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
      id: (l$id as String),
      name: (l$name as String),
      polygonGeoJson: (l$polygonGeoJson as String?),
      $Map: l$$Map == null
          ? null
          : Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
              .fromJson((l$$Map as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? polygonGeoJson;

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map?
      $Map;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$polygonGeoJson = polygonGeoJson;
    _resultData['polygonGeoJson'] = l$polygonGeoJson;
    final l$$Map = $Map;
    _resultData['Map'] = l$$Map?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$polygonGeoJson = polygonGeoJson;
    final l$$Map = $Map;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$polygonGeoJson,
      l$$Map,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea) ||
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
    final l$polygonGeoJson = polygonGeoJson;
    final lOther$polygonGeoJson = other.polygonGeoJson;
    if (l$polygonGeoJson != lOther$polygonGeoJson) {
      return false;
    }
    final l$$Map = $Map;
    final lOther$$Map = other.$Map;
    if (l$$Map != lOther$$Map) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea;

  TRes call({
    String? id,
    String? name,
    String? polygonGeoJson,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map?
        $Map,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
      TRes> get $Map;
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? polygonGeoJson = _undefined,
    Object? $Map = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        polygonGeoJson: polygonGeoJson == _undefined
            ? _instance.polygonGeoJson
            : (polygonGeoJson as String?),
        $Map: $Map == _undefined
            ? _instance.$Map
            : ($Map
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
      TRes> get $Map {
    final local$$Map = _instance.$Map;
    return local$$Map == null
        ? CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
            .stub(_then(_instance))
        : CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
            local$$Map, (e) => call($Map: e));
  }
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? polygonGeoJson,
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map?
        $Map,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
          TRes>
      get $Map =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
              .stub(_res);
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map({
    required this.id,
    required this.name,
    this.$__typename = 'Map',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$MapArea$Map(
      this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate({
    this.aggregate,
    this.$__typename = 'Encounter_aggregate',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate;

  TRes call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate(
      this._res);

  TRes _res;

  call({
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
              .stub(_res);
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate({
    required this.count,
    this.$__typename = 'Encounter_aggregate_fields',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters({
    required this.id,
    required this.result,
    required this.houseAddress,
    required this.encounterTimeInUtc,
    required this.SavedPeople,
    this.$__typename = 'Encounter',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$result = json['result'];
    final l$houseAddress = json['houseAddress'];
    final l$encounterTimeInUtc = json['encounterTimeInUtc'];
    final l$SavedPeople = json['SavedPeople'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
      id: (l$id as String),
      result: (l$result as String),
      houseAddress: (l$houseAddress as String),
      encounterTimeInUtc: (l$encounterTimeInUtc as String),
      SavedPeople: (l$SavedPeople as List<dynamic>)
          .map((e) =>
              Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String result;

  final String houseAddress;

  final String encounterTimeInUtc;

  final List<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>
      SavedPeople;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$result = result;
    _resultData['result'] = l$result;
    final l$houseAddress = houseAddress;
    _resultData['houseAddress'] = l$houseAddress;
    final l$encounterTimeInUtc = encounterTimeInUtc;
    _resultData['encounterTimeInUtc'] = l$encounterTimeInUtc;
    final l$SavedPeople = SavedPeople;
    _resultData['SavedPeople'] = l$SavedPeople.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$result = result;
    final l$houseAddress = houseAddress;
    final l$encounterTimeInUtc = encounterTimeInUtc;
    final l$SavedPeople = SavedPeople;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$result,
      l$houseAddress,
      l$encounterTimeInUtc,
      Object.hashAll(l$SavedPeople.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$result = result;
    final lOther$result = other.result;
    if (l$result != lOther$result) {
      return false;
    }
    final l$houseAddress = houseAddress;
    final lOther$houseAddress = other.houseAddress;
    if (l$houseAddress != lOther$houseAddress) {
      return false;
    }
    final l$encounterTimeInUtc = encounterTimeInUtc;
    final lOther$encounterTimeInUtc = other.encounterTimeInUtc;
    if (l$encounterTimeInUtc != lOther$encounterTimeInUtc) {
      return false;
    }
    final l$SavedPeople = SavedPeople;
    final lOther$SavedPeople = other.SavedPeople;
    if (l$SavedPeople.length != lOther$SavedPeople.length) {
      return false;
    }
    for (int i = 0; i < l$SavedPeople.length; i++) {
      final l$SavedPeople$entry = l$SavedPeople[i];
      final lOther$SavedPeople$entry = lOther$SavedPeople[i];
      if (l$SavedPeople$entry != lOther$SavedPeople$entry) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters;

  TRes call({
    String? id,
    String? result,
    String? houseAddress,
    String? encounterTimeInUtc,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>?
        SavedPeople,
    String? $__typename,
  });
  TRes SavedPeople(
      Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople> Function(
              Iterable<
                  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
                      Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>>)
          _fn);
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? result = _undefined,
    Object? houseAddress = _undefined,
    Object? encounterTimeInUtc = _undefined,
    Object? SavedPeople = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        result: result == _undefined || result == null
            ? _instance.result
            : (result as String),
        houseAddress: houseAddress == _undefined || houseAddress == null
            ? _instance.houseAddress
            : (houseAddress as String),
        encounterTimeInUtc:
            encounterTimeInUtc == _undefined || encounterTimeInUtc == null
                ? _instance.encounterTimeInUtc
                : (encounterTimeInUtc as String),
        SavedPeople: SavedPeople == _undefined || SavedPeople == null
            ? _instance.SavedPeople
            : (SavedPeople as List<
                Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes SavedPeople(
          Iterable<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople> Function(
                  Iterable<
                      CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
                          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>>)
              _fn) =>
      call(
          SavedPeople: _fn(_instance.SavedPeople.map((e) =>
              CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters(
      this._res);

  TRes _res;

  call({
    String? id,
    String? result,
    String? houseAddress,
    String? encounterTimeInUtc,
    List<Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>?
        SavedPeople,
    String? $__typename,
  }) =>
      _res;
  SavedPeople(_fn) => _res;
}

class Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople {
  Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople({
    required this.email,
    required this.id,
    required this.name,
    required this.phone,
    this.$__typename = 'SavedPerson',
  });

  factory Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople.fromJson(
      Map<String, dynamic> json) {
    final l$email = json['email'];
    final l$id = json['id'];
    final l$name = json['name'];
    final l$phone = json['phone'];
    final l$$__typename = json['__typename'];
    return Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
      email: (l$email as String),
      id: (l$id as String),
      name: (l$name as String),
      phone: (l$phone as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String email;

  final String id;

  final String name;

  final String phone;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$email = email;
    _resultData['email'] = l$email;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$phone = phone;
    _resultData['phone'] = l$phone;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$email = email;
    final l$id = id;
    final l$name = name;
    final l$phone = phone;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$email,
      l$id,
      l$name,
      l$phone,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (l$phone != lOther$phone) {
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

extension UtilityExtension$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople
    on Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople {
  CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople>
      get copyWith =>
          CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
    TRes> {
  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
    Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople
        instance,
    TRes Function(
            Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople)
        then,
  ) = _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople;

  factory CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople;

  TRes call({
    String? email,
    String? id,
    String? name,
    String? phone,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
            TRes> {
  _CopyWithImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
    this._instance,
    this._then,
  );

  final Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople
      _instance;

  final TRes Function(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? email = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
    Object? phone = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        phone: phone == _undefined || phone == null
            ? _instance.phone
            : (phone as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
        TRes>
    implements
        CopyWith$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople<
            TRes> {
  _CopyWithStubImpl$Query$GetEventDetail$Event$SoulWinningSessions$SoulWinningSessionGroups$Encounters$SavedPeople(
      this._res);

  TRes _res;

  call({
    String? email,
    String? id,
    String? name,
    String? phone,
    String? $__typename,
  }) =>
      _res;
}
