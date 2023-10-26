import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../extension/date_time.dart';
import '../../../extension/string.dart';
import '../../../util/util.dart';
import '../../component/date_pick_text_field/widget.dart';
import '../../component/gradation_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../component/ihs_dialog/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import '../vaccine_schedule/notifier.dart';
import '../vaccine_schedule/state.dart';
import '../vaccine_schedule/type.dart';
import 'notifier.dart';
import 'select_view_list/widget.dart';
import 'state.dart';

// 実績入力
class VaccineDoneInputPage extends ConsumerStatefulWidget {
  const VaccineDoneInputPage({
    super.key,
    required this.data,
    required this.dListType,
    required this.idx,
  });

  final VaccineDetailData data;
  final DataListType dListType;
  final int idx;

  @override
  _VaccineDoneInputPage createState() => _VaccineDoneInputPage();
}

class _VaccineDoneInputPage extends ConsumerState<VaccineDoneInputPage> {
  final validityStrList = <String>[];
  final numberNameList = <String>[];
  final selectItemList = <String>[];
  final nameToIdMap = <String, String>{};
  String get vName => widget.data.vaccineName;
  int get vaccineId => widget.data.vaccineTypeId;
  int get count => widget.data.neededTimes;
  Map<String, String> get validityPulList => widget.data.selectItemList;

  @override
  void initState() {
    nameToIdMap.clear();
    validityPulList.forEach((key, value) {
      nameToIdMap[value] = key;
    });
    final tgList = ref
        .read(vaccineDetailStatusProvider.notifier)
        .getValidityInoculationData(widget.idx, DataListType.history);
    final len = tgList.length;
    for (var i = 0; i < count; ++i) {
      if (i < len) {
        if (tgList[i].settingDate == null) {
          validityStrList.add('');
        } else if (tgList[i].settingDate!.isEmpty) {
          validityStrList.add('');
        } else {
          validityStrList.add(tgList[i].settingDate!);
        }
        //
        if (tgList[i].selectItem == null) {
          selectItemList.add('');
        } else if (tgList[i].selectItem!.isEmpty) {
          selectItemList.add('');
        } else {
          selectItemList.add(tgList[i].selectItem!);
        }
      } else {
        validityStrList.add('');
        selectItemList.add('');
      }
      if (tgList[i].numberName == null) {
        numberNameList.add('${(i + 1).toString()}回目');
      } else {
        numberNameList.add(tgList[i].numberName.toString());
      }
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(vaccineDoneInputProvider.notifier).setup(
          VaccineDoneInputDate(
              dateList: validityStrList, selectItemList: selectItemList),
          nameToIdMap);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(vaccineDoneInputProvider);
    final notifier = ref.watch(vaccineDoneInputProvider.notifier);
    final detailNotifier = ref.read(vaccineDetailStatusProvider.notifier);
    final lineSpace =
        (validityPulList.isNotEmpty) ? (40.0 - 8.0) : (16.0 - 16.0);
    final scrollController = ScrollController();

    return GradationLayout(
      title: '実績',
      headerPressed: IHSUtil.getScrollTopFunction(scrollController),
      showDrawer: false,
      horizontalPadding: 0,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 16),
            Text(
              vName,
              style: IHSTextStyle.medium.copyWith(color: IHSColors.pink500),
            ),
            const SizedBox(height: 32),
            Text(
              '実際に接種した日を登録してください。\nあとから修正もできます。',
              style: IHSTextStyle.small,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            for (int i = 0; i < count; ++i) ...{
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 23, bottom: 16),
                child: Column(
                  children: [
                    if (i != 0 && lineSpace > 0) SizedBox(height: lineSpace),
                    DatePickTextField(
                      changeStrDate(state.inputDate?.dateList[i]),
                      title: numberNameList[i],
                      onChanged: (dateTime) {
                        final selectedItem = state.inputDate!.selectItemList[i];
                        if (dateTime == null) {
                          validityStrList[i] = '';
                        } else {
                          validityStrList[i] = dateTime.yyyymmdd;
                        }

                        notifier.onChangedDateList(validityStrList);
                        if (dateTime == null && selectedItem.isNotEmpty) {
                          notifier.makeEmptySelectItem(i);
                        }
                      },
                    ),
                    if (validityPulList.isNotEmpty) ...[
                      const SizedBox(height: 16),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: IHSColors.black800,
                          ),
                          color: IHSColors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Theme(
                          // これを入れないと上下にラインが表示されてしまう
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ListTileTheme(
                            // これを入れないと余白が入った高さになるっぽい
                            dense: true,
                            child: ExpansionTile(
                              key: Key(state.expandedNum.toString()),
                              initiallyExpanded: state.expandedNum == i,
                              title: Text(
                                (state.inputDate == null)
                                    ? ''
                                    : state.inputDate!.selectItemList[i],
                                style: IHSTextStyle.small,
                              ),
                              onExpansionChanged: (bool changed) {
                                notifier.changeExpanded(changed ? i : -1);
                              },
                              trailing: const Icon(Icons.arrow_drop_down),
                              // サブリストが折りたたまれたときのタイルの背景色
                              collapsedTextColor: IHSColors.black800,
                              // サブリストが折りたたまれたときのタイルのタイトルの色
                              collapsedIconColor: IHSColors.black900,
                              // サブリストが折りたたまれたときのタイルの展開矢印アイコンのアイコンの色
                              textColor: IHSColors.black800,
                              // サブリストが展開されているときのタイルのタイトルの色
                              iconColor: IHSColors.black900,
                              // サブリストが展開されているときのタイルの展開矢印アイコンのアイコンの色
                              children: <Widget>[
                                SelectViewList(
                                  idx: i,
                                  dataList: nameToIdMap.keys.toList(),
                                  dataCtl: notifier,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              )
            },
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 143,
                  child: IHSButton(
                    '削除',
                    type: IHSButtonType.gray,
                    onPressed: () {
                      IHSDialog(
                          context: context,
                          title: vName + 'の\n' + '接種実績を削除します。\nよろしいですか？',
                          okStr: '削除する',
                          cancelStr: 'キャンセル',
                          okButtonType: IHSButtonType.gray,
                          cancelButtonType: IHSButtonType.primary,
                          onTap: (_) async {
                            await notifier.onTapDelete(
                              vaccineTypeId: vaccineId,
                              onSuccess: () {
                                detailNotifier.onClearSettingDate(
                                    widget.dListType, widget.idx);
                                validityStrList.forEach((element) {
                                  element = '';
                                });
                                selectItemList.forEach((element) {
                                  element = '';
                                });
                                notifier.setup(
                                  VaccineDoneInputDate(
                                    dateList: validityStrList,
                                    selectItemList: selectItemList,
                                  ),
                                  nameToIdMap,
                                );
                              },
                              onFailure: (msg) {
                                if (msg.isEmpty) {
                                  return;
                                }

                                IHSUtil.showSnackBar(msg: msg);
                              },
                            );
                            Navigator.pop(context);
                          }).showAlert();
                    },
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 143,
                  child: IHSButton(
                    '登録',
                    type: IHSButtonType.primary,
                    onPressed: () async {
                      final isRegisterable = notifier.confirmRegisterable();
                      if (!isRegisterable) {
                        IHSUtil.showSnackBar(msg: IHSTexts.vaccineDateRequired);
                        return;
                      }

                      await notifier.onTapRegister(
                        vaccineTypeId: vaccineId,
                        onSuccess: () {
                          detailNotifier.onSetSettingDate(
                            validityStrList: validityStrList,
                            dListType: DataListType.history,
                            idx: widget.idx,
                            itemList: state.inputDate!.selectItemList.toList(),
                          );
                          IHSUtil.showSnackBar(msg: IHSTexts.createSuccess);
                        },
                        onFailure: (msg) {
                          if (msg.isEmpty) {
                            return;
                          }

                          IHSUtil.showSnackBar(msg: msg);
                        },
                      );
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  DateTime? changeStrDate(String? str) {
    if (str == null || str.isEmpty) {
      return null;
    }
    return str.toDateTime(DateFormatType.yyyymmdd);
  }
}
