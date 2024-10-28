import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _defaultID =
          (await secureStorage.getString('ff_defaultID'))?.ref ?? _defaultID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<ChartSplineStruct> _splineChart = [
    ChartSplineStruct.fromSerializableMap(jsonDecode(
        '{\"x_axis\":\"Jan\",\"y_first\":\"5.0\",\"y_second\":\"0.0\"}'))
  ];
  List<ChartSplineStruct> get splineChart => _splineChart;
  set splineChart(List<ChartSplineStruct> value) {
    _splineChart = value;
  }

  void addToSplineChart(ChartSplineStruct value) {
    splineChart.add(value);
  }

  void removeFromSplineChart(ChartSplineStruct value) {
    splineChart.remove(value);
  }

  void removeAtIndexFromSplineChart(int index) {
    splineChart.removeAt(index);
  }

  void updateSplineChartAtIndex(
    int index,
    ChartSplineStruct Function(ChartSplineStruct) updateFn,
  ) {
    splineChart[index] = updateFn(_splineChart[index]);
  }

  void insertAtIndexInSplineChart(int index, ChartSplineStruct value) {
    splineChart.insert(index, value);
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<String> _selectedRoles = [];
  List<String> get selectedRoles => _selectedRoles;
  set selectedRoles(List<String> value) {
    _selectedRoles = value;
  }

  void addToSelectedRoles(String value) {
    selectedRoles.add(value);
  }

  void removeFromSelectedRoles(String value) {
    selectedRoles.remove(value);
  }

  void removeAtIndexFromSelectedRoles(int index) {
    selectedRoles.removeAt(index);
  }

  void updateSelectedRolesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedRoles[index] = updateFn(_selectedRoles[index]);
  }

  void insertAtIndexInSelectedRoles(int index, String value) {
    selectedRoles.insert(index, value);
  }

  DocumentReference? _defaultID =
      FirebaseFirestore.instance.doc('/defaults/8k5Egi1LhR1Imehy5qyQ');
  DocumentReference? get defaultID => _defaultID;
  set defaultID(DocumentReference? value) {
    _defaultID = value;
    value != null
        ? secureStorage.setString('ff_defaultID', value.path)
        : secureStorage.remove('ff_defaultID');
  }

  void deleteDefaultID() {
    secureStorage.delete(key: 'ff_defaultID');
  }

  String _scopeState = '';
  String get scopeState => _scopeState;
  set scopeState(String value) {
    _scopeState = value;
  }

  List<int> _programTimeCount = [0];
  List<int> get programTimeCount => _programTimeCount;
  set programTimeCount(List<int> value) {
    _programTimeCount = value;
  }

  void addToProgramTimeCount(int value) {
    programTimeCount.add(value);
  }

  void removeFromProgramTimeCount(int value) {
    programTimeCount.remove(value);
  }

  void removeAtIndexFromProgramTimeCount(int index) {
    programTimeCount.removeAt(index);
  }

  void updateProgramTimeCountAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    programTimeCount[index] = updateFn(_programTimeCount[index]);
  }

  void insertAtIndexInProgramTimeCount(int index, int value) {
    programTimeCount.insert(index, value);
  }

  List<EventProgramStruct> _eventProgramList = [];
  List<EventProgramStruct> get eventProgramList => _eventProgramList;
  set eventProgramList(List<EventProgramStruct> value) {
    _eventProgramList = value;
  }

  void addToEventProgramList(EventProgramStruct value) {
    eventProgramList.add(value);
  }

  void removeFromEventProgramList(EventProgramStruct value) {
    eventProgramList.remove(value);
  }

  void removeAtIndexFromEventProgramList(int index) {
    eventProgramList.removeAt(index);
  }

  void updateEventProgramListAtIndex(
    int index,
    EventProgramStruct Function(EventProgramStruct) updateFn,
  ) {
    eventProgramList[index] = updateFn(_eventProgramList[index]);
  }

  void insertAtIndexInEventProgramList(int index, EventProgramStruct value) {
    eventProgramList.insert(index, value);
  }

  List<BudgetListStruct> _budgetList = [];
  List<BudgetListStruct> get budgetList => _budgetList;
  set budgetList(List<BudgetListStruct> value) {
    _budgetList = value;
  }

  void addToBudgetList(BudgetListStruct value) {
    budgetList.add(value);
  }

  void removeFromBudgetList(BudgetListStruct value) {
    budgetList.remove(value);
  }

  void removeAtIndexFromBudgetList(int index) {
    budgetList.removeAt(index);
  }

  void updateBudgetListAtIndex(
    int index,
    BudgetListStruct Function(BudgetListStruct) updateFn,
  ) {
    budgetList[index] = updateFn(_budgetList[index]);
  }

  void insertAtIndexInBudgetList(int index, BudgetListStruct value) {
    budgetList.insert(index, value);
  }

  String _appVersion = '';
  String get appVersion => _appVersion;
  set appVersion(String value) {
    _appVersion = value;
  }

  List<DocumentReference> _roles = [];
  List<DocumentReference> get roles => _roles;
  set roles(List<DocumentReference> value) {
    _roles = value;
  }

  void addToRoles(DocumentReference value) {
    roles.add(value);
  }

  void removeFromRoles(DocumentReference value) {
    roles.remove(value);
  }

  void removeAtIndexFromRoles(int index) {
    roles.removeAt(index);
  }

  void updateRolesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    roles[index] = updateFn(_roles[index]);
  }

  void insertAtIndexInRoles(int index, DocumentReference value) {
    roles.insert(index, value);
  }

  List<DocumentReference> _approvers = [];
  List<DocumentReference> get approvers => _approvers;
  set approvers(List<DocumentReference> value) {
    _approvers = value;
  }

  void addToApprovers(DocumentReference value) {
    approvers.add(value);
  }

  void removeFromApprovers(DocumentReference value) {
    approvers.remove(value);
  }

  void removeAtIndexFromApprovers(int index) {
    approvers.removeAt(index);
  }

  void updateApproversAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    approvers[index] = updateFn(_approvers[index]);
  }

  void insertAtIndexInApprovers(int index, DocumentReference value) {
    approvers.insert(index, value);
  }

  List<ApprovalSignatoryStruct> _signatorySet = [
    ApprovalSignatoryStruct.fromSerializableMap(jsonDecode(
        '{\"note\":\"Hello World\",\"approver_role\":\"/roles/example\",\"approval_user\":\"/users/example\"}'))
  ];
  List<ApprovalSignatoryStruct> get signatorySet => _signatorySet;
  set signatorySet(List<ApprovalSignatoryStruct> value) {
    _signatorySet = value;
  }

  void addToSignatorySet(ApprovalSignatoryStruct value) {
    signatorySet.add(value);
  }

  void removeFromSignatorySet(ApprovalSignatoryStruct value) {
    signatorySet.remove(value);
  }

  void removeAtIndexFromSignatorySet(int index) {
    signatorySet.removeAt(index);
  }

  void updateSignatorySetAtIndex(
    int index,
    ApprovalSignatoryStruct Function(ApprovalSignatoryStruct) updateFn,
  ) {
    signatorySet[index] = updateFn(_signatorySet[index]);
  }

  void insertAtIndexInSignatorySet(int index, ApprovalSignatoryStruct value) {
    signatorySet.insert(index, value);
  }

  List<String> _signatoryChecker = [];
  List<String> get signatoryChecker => _signatoryChecker;
  set signatoryChecker(List<String> value) {
    _signatoryChecker = value;
  }

  void addToSignatoryChecker(String value) {
    signatoryChecker.add(value);
  }

  void removeFromSignatoryChecker(String value) {
    signatoryChecker.remove(value);
  }

  void removeAtIndexFromSignatoryChecker(int index) {
    signatoryChecker.removeAt(index);
  }

  void updateSignatoryCheckerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    signatoryChecker[index] = updateFn(_signatoryChecker[index]);
  }

  void insertAtIndexInSignatoryChecker(int index, String value) {
    signatoryChecker.insert(index, value);
  }

  List<DocumentReference> _users = [];
  List<DocumentReference> get users => _users;
  set users(List<DocumentReference> value) {
    _users = value;
  }

  void addToUsers(DocumentReference value) {
    users.add(value);
  }

  void removeFromUsers(DocumentReference value) {
    users.remove(value);
  }

  void removeAtIndexFromUsers(int index) {
    users.removeAt(index);
  }

  void updateUsersAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    users[index] = updateFn(_users[index]);
  }

  void insertAtIndexInUsers(int index, DocumentReference value) {
    users.insert(index, value);
  }

  bool _otherSelect = false;
  bool get otherSelect => _otherSelect;
  set otherSelect(bool value) {
    _otherSelect = value;
  }

  String _platformChoice = '';
  String get platformChoice => _platformChoice;
  set platformChoice(String value) {
    _platformChoice = value;
  }

  List<CalendarStruct> _eventList = [
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"eventName\":\"SEAT Summit\",\"from\":\"1725181143769\",\"to\":\"1725190500000\",\"background\":\"#35408e\",\"isAllDay\":\"false\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"eventName\":\"Paskonalian 2024\",\"from\":\"1725267540000\",\"to\":\"1725250200000\",\"background\":\"#ff5963\",\"isAllDay\":\"false\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"eventName\":\"Techtober Fest\",\"from\":\"1725364800000\",\"to\":\"1725344760000\",\"background\":\"#00be40\",\"isAllDay\":\"false\"}'))
  ];
  List<CalendarStruct> get eventList => _eventList;
  set eventList(List<CalendarStruct> value) {
    _eventList = value;
  }

  void addToEventList(CalendarStruct value) {
    eventList.add(value);
  }

  void removeFromEventList(CalendarStruct value) {
    eventList.remove(value);
  }

  void removeAtIndexFromEventList(int index) {
    eventList.removeAt(index);
  }

  void updateEventListAtIndex(
    int index,
    CalendarStruct Function(CalendarStruct) updateFn,
  ) {
    eventList[index] = updateFn(_eventList[index]);
  }

  void insertAtIndexInEventList(int index, CalendarStruct value) {
    eventList.insert(index, value);
  }

  String _scannedNFCTag = '';
  String get scannedNFCTag => _scannedNFCTag;
  set scannedNFCTag(String value) {
    _scannedNFCTag = value;
  }

  String _scannedNFCresult = '';
  String get scannedNFCresult => _scannedNFCresult;
  set scannedNFCresult(String value) {
    _scannedNFCresult = value;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  AddressStruct _address = AddressStruct();
  AddressStruct get address => _address;
  set address(AddressStruct value) {
    _address = value;
  }

  void updateAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(_address);
  }

  LatLng? _nuBaliwagLocation = LatLng(14.9594505, 120.8899354);
  LatLng? get nuBaliwagLocation => _nuBaliwagLocation;
  set nuBaliwagLocation(LatLng? value) {
    _nuBaliwagLocation = value;
  }

  List<ChartDataSemiDoughnutStruct> _ChartData1 = [
    ChartDataSemiDoughnutStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"Jan\",\"yy\":\"20.0\",\"text\":\"Jan 20%\"}')),
    ChartDataSemiDoughnutStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"Feb\",\"yy\":\"32.0\",\"text\":\"Feb 32%\"}')),
    ChartDataSemiDoughnutStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"Mar\",\"yy\":\"10.0\",\"text\":\"Mar 10%\"}')),
    ChartDataSemiDoughnutStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"Apr\",\"yy\":\"24.0\",\"text\":\"Apr 24%\"}'))
  ];
  List<ChartDataSemiDoughnutStruct> get ChartData1 => _ChartData1;
  set ChartData1(List<ChartDataSemiDoughnutStruct> value) {
    _ChartData1 = value;
  }

  void addToChartData1(ChartDataSemiDoughnutStruct value) {
    ChartData1.add(value);
  }

  void removeFromChartData1(ChartDataSemiDoughnutStruct value) {
    ChartData1.remove(value);
  }

  void removeAtIndexFromChartData1(int index) {
    ChartData1.removeAt(index);
  }

  void updateChartData1AtIndex(
    int index,
    ChartDataSemiDoughnutStruct Function(ChartDataSemiDoughnutStruct) updateFn,
  ) {
    ChartData1[index] = updateFn(_ChartData1[index]);
  }

  void insertAtIndexInChartData1(int index, ChartDataSemiDoughnutStruct value) {
    ChartData1.insert(index, value);
  }

  String _ChartData3 = '';
  String get ChartData3 => _ChartData3;
  set ChartData3(String value) {
    _ChartData3 = value;
  }

  List<ChartDataCircularBarStruct> _ChartData03 = [
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE211\",\"yy\":\"56.2\"}')),
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE211\",\"yy\":\"45.2\"}')),
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE231\",\"yy\":\"10.4\"}')),
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE201\",\"yy\":\"45.7\"}')),
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE222\",\"yy\":\"28.4\"}')),
    ChartDataCircularBarStruct.fromSerializableMap(
        jsonDecode('{\"xx\":\"ITE245\",\"yy\":\"9.4\"}'))
  ];
  List<ChartDataCircularBarStruct> get ChartData03 => _ChartData03;
  set ChartData03(List<ChartDataCircularBarStruct> value) {
    _ChartData03 = value;
  }

  void addToChartData03(ChartDataCircularBarStruct value) {
    ChartData03.add(value);
  }

  void removeFromChartData03(ChartDataCircularBarStruct value) {
    ChartData03.remove(value);
  }

  void removeAtIndexFromChartData03(int index) {
    ChartData03.removeAt(index);
  }

  void updateChartData03AtIndex(
    int index,
    ChartDataCircularBarStruct Function(ChartDataCircularBarStruct) updateFn,
  ) {
    ChartData03[index] = updateFn(_ChartData03[index]);
  }

  void insertAtIndexInChartData03(int index, ChartDataCircularBarStruct value) {
    ChartData03.insert(index, value);
  }

  bool _emailVerified = false;
  bool get emailVerified => _emailVerified;
  set emailVerified(bool value) {
    _emailVerified = value;
  }

  bool _hasUppercase = false;
  bool get hasUppercase => _hasUppercase;
  set hasUppercase(bool value) {
    _hasUppercase = value;
  }

  bool _hasLowercase = false;
  bool get hasLowercase => _hasLowercase;
  set hasLowercase(bool value) {
    _hasLowercase = value;
  }

  bool _hasNumber = false;
  bool get hasNumber => _hasNumber;
  set hasNumber(bool value) {
    _hasNumber = value;
  }

  bool _hasSpecialCharacter = false;
  bool get hasSpecialCharacter => _hasSpecialCharacter;
  set hasSpecialCharacter(bool value) {
    _hasSpecialCharacter = value;
  }

  bool _hasMinimumLength = false;
  bool get hasMinimumLength => _hasMinimumLength;
  set hasMinimumLength(bool value) {
    _hasMinimumLength = value;
  }

  final _upcomingEventsDashboardManager =
      FutureRequestManager<List<EventsRecord>>();
  Future<List<EventsRecord>> upcomingEventsDashboard({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<EventsRecord>> Function() requestFn,
  }) =>
      _upcomingEventsDashboardManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearUpcomingEventsDashboardCache() =>
      _upcomingEventsDashboardManager.clear();
  void clearUpcomingEventsDashboardCacheKey(String? uniqueKey) =>
      _upcomingEventsDashboardManager.clearRequest(uniqueKey);

  final _latestUpdatesDashboardManager =
      FutureRequestManager<List<ContentRecord>>();
  Future<List<ContentRecord>> latestUpdatesDashboard({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ContentRecord>> Function() requestFn,
  }) =>
      _latestUpdatesDashboardManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLatestUpdatesDashboardCache() =>
      _latestUpdatesDashboardManager.clear();
  void clearLatestUpdatesDashboardCacheKey(String? uniqueKey) =>
      _latestUpdatesDashboardManager.clearRequest(uniqueKey);

  final _orgsExploreManager = StreamRequestManager<List<OrganizationsRecord>>();
  Stream<List<OrganizationsRecord>> orgsExplore({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<OrganizationsRecord>> Function() requestFn,
  }) =>
      _orgsExploreManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOrgsExploreCache() => _orgsExploreManager.clear();
  void clearOrgsExploreCacheKey(String? uniqueKey) =>
      _orgsExploreManager.clearRequest(uniqueKey);

  final _activityLogsManager = StreamRequestManager<List<ActivityLogsRecord>>();
  Stream<List<ActivityLogsRecord>> activityLogs({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ActivityLogsRecord>> Function() requestFn,
  }) =>
      _activityLogsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearActivityLogsCache() => _activityLogsManager.clear();
  void clearActivityLogsCacheKey(String? uniqueKey) =>
      _activityLogsManager.clearRequest(uniqueKey);

  final _officeListManager = FutureRequestManager<List<OfficeRecord>>();
  Future<List<OfficeRecord>> officeList({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<OfficeRecord>> Function() requestFn,
  }) =>
      _officeListManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearOfficeListCache() => _officeListManager.clear();
  void clearOfficeListCacheKey(String? uniqueKey) =>
      _officeListManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
