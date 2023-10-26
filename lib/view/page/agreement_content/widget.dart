// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '/data/model/consent/model.dart';
import '../../../provider/config/notifier.dart';
import '../../../util/util.dart';
import '../../component/base_app_bar/widget.dart';
import '../../component/base_layout/widget.dart';
import '../../component/ihs_button/type.dart';
import '../../component/ihs_button/widget.dart';
import '../../style/colors.dart';
import '../../style/text_style.dart';
import '../../style/texts.dart';
import 'notifier.dart';
import 'type.dart';

/// 同意内容を確認する画面（個人情報・プライバシーポリシー・利用規約）
class AgreementContentPage extends ConsumerStatefulWidget {
  AgreementContentPage({
    super.key,
    required this.showConsentButton,
    required this.type,
    this.onTapedAgree,
    this.showLeading = true,
  });

  final bool showConsentButton;
  final bool showLeading;
  final Function(ConsentModel)? onTapedAgree;
  final AgreementContentType type;

  late ConsentModel? consentModel;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AgreementContentPageState();
}

class _AgreementContentPageState extends ConsumerState<AgreementContentPage> {
  late final WebViewController webViewController;
  bool isEndScroll = false;

  @override
  void initState() {
    final configNotifier = ref.read(appConfigProvider.notifier);
    final url = configNotifier.getUrl(widget.type);
    webViewController = WebViewController();
    webViewController
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..addJavaScriptChannel('END_SCROLL', onMessageReceived: (msg) {
        if (msg.message == 'end of scroll') {
          setState(() {
            isEndScroll = true;
          });
        }
      })
      ..setBackgroundColor(const Color(0xFFFFFFFF))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {
            debugPrint('---Start url---');
            debugPrint(url);
          },
          onPageFinished: (String url) {
            debugPrint('---Finish url---');
            debugPrint(url);
            webViewController.runJavaScript(
              widget.type == AgreementContentType.privacyPolicy
                  ? '''
   document.getElementById("jssmpbtmnavi").style.display ="none";
   document.getElementById("guidebg").style.display ="none";
   const pdf = document.getElementsByClassName("pdf")[0];
   const parent_element = pdf.closest('.articleall');
   parent_element.style.display ="none";
   
   window.onscroll = function(ev) {
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight -1600) {
    window.END_SCROLL.postMessage('end of scroll');
    }
};'''
                  : '''
   document.getElementById("jssmpbtmnavi").style.display ="none";
   document.getElementById("guidebg").style.display ="none";
   const pdf = document.getElementsByClassName("pdf")[0];
   const link_element = pdf.closest('.objectlink');
   link_element.style.display ="none";

   window.onscroll = function(ev) {
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight -1600) {
    window.END_SCROLL.postMessage('end of scroll');
    }
};''',
            );
          },
          onWebResourceError: (WebResourceError error) {
            debugPrint('---Page resource error---');
            debugPrint('code: ${error.errorCode}');
            debugPrint('description: ${error.description}');
            debugPrint('errorType: ${error.errorType}');
            debugPrint('isForMainFrame: ${error.isForMainFrame}');
          },
        ),
      )
      ..loadRequest(Uri.parse(url));
    super.initState();
  }

  void _jumpToScrollTop() {
    webViewController
        .runJavaScript("window.scrollTo({top: 0, behavior: 'smooth'});");
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(agreementContentStateProvider);
    switch (widget.type) {
      case AgreementContentType.privacyPolicy:
        widget.consentModel = state.poricyConsent;
        break;
      case AgreementContentType.terms:
        widget.consentModel = state.termsConsent;
        break;
    }

    return BaseLayout(
      reload: () async {
        ref.refresh(agreementContentStateProvider);
      },
      body: Scaffold(
        backgroundColor: IHSColors.pink100,
        appBar: AppBar(
          backgroundColor: IHSColors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: IHSColors.pink500),
          centerTitle: true,
          title: InkWell(
            onTap: _jumpToScrollTop,
            child: Text(
              widget.consentModel == null ? '' : widget.consentModel!.label,
              style: IHSTextStyle.medium.copyWith(
                color: IHSColors.pink500,
              ),
            ),
          ),
          flexibleSpace: InkWell(onTap: _jumpToScrollTop),
          leading: widget.showLeading ? const AppBarLeadingIconButton() : null,
          automaticallyImplyLeading: widget.showLeading,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 16,
                  ),
                  child: WebViewWidget(controller: webViewController),
                ),
              ),
              if (widget.showConsentButton) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: 128,
                  child: IHSButton(
                    '同意する',
                    type: isEndScroll
                        ? IHSButtonType.primary
                        : IHSButtonType.gray,
                    onPressed: () {
                      if (!isEndScroll) {
                        IHSUtil.showSnackBar(msg: IHSTexts.pleaseCheckEnd);
                        return;
                      }
                      // 取得中や取得失敗した場合にタップするとエラーが起きるため
                      if (widget.consentModel != null) {
                        widget.onTapedAgree?.call(widget.consentModel!);
                      }

                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const SizedBox(height: 32),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
