import 'package:flutter/material.dart';
import 'package:tiengviet/tiengviet.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final testText = TiengViet.parse('TRẦN HÀ PHƯƠNG &#S%^%2324@*(');
    // String result = testText.replaceAll(RegExp('[^A-Za-z0-9\\s]'), '');

    const testText =
        "&lt;p class=&quot;pTitle&quot;&gt;PHS đặt kế hoạch lãi sau thuế 2024 tăng 115%&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pHead&quot;&gt;HĐQT CTCP Chứng khoán Phú Hưng (UPCoM: &lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/PHS-ctcp-chung-khoan-phu-hung.htm&quot;&gt;PHS&lt;/a&gt;) ngày 27/12 đã thông qua kế hoạch kinh doanh năm 2024.&lt;/p&gt;&#xD;&#xA;&lt;table class=&quot;img-content zoom&quot; align=&quot;center&quot; style=&quot;width: 571px;&quot;&gt;&#xD;&#xA;    &lt;tbody&gt;&#xD;&#xA;        &lt;tr&gt;&#xD;&#xA;            &lt;td&gt;&#xD;&#xA;            &lt;div class=&quot;pImgAuthor&quot; style=&quot;width: 100%;&quot;&gt;Ước tính kết quả kinh doanh 2023 và kế hoạch năm 2024&lt;/div&gt;&#xD;&#xA;            &lt;div class=&quot;pDVT&quot; style=&quot;width: 100%;&quot;&gt;Đvt: Tỷ đồng&lt;/div&gt;&#xD;&#xA;            &lt;img alt=&quot;&quot; src=&quot;https://image.vietstock.vn/2023/12/28/PHS-fix2.PNG&quot; style=&quot;width: 571px; height: 229px; border: 0px;&quot; align=&quot;center&quot; /&gt;&#xD;&#xA;            &lt;div class=&quot;pCaption&quot; style=&quot;width: 100%;&quot;&gt;Nguồn: Dự toán tài chính của &lt;span&gt;PHS&lt;/span&gt;&lt;/div&gt;&#xD;&#xA;            &lt;/td&gt;&#xD;&#xA;        &lt;/tr&gt;&#xD;&#xA;    &lt;/tbody&gt;&#xD;&#xA;&lt;/table&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Theo đó, năm 2024, &lt;span&gt;PHS&lt;/span&gt; dự kiến mang về 745 tỷ đồng doanh thu hoạt động, tăng 33% so với kết quả ước tính năm 2023 là 562 tỷ đồng. Lãi trước thuế và sau thuế kế hoạch ở mức 132 tỷ đồng và gần 101 tỷ đồng, cả hai chỉ tiêu này đều dự kiến gấp đôi con số ước tính năm trước.&amp;nbsp;&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Về cấu trúc doanh thu, nguồn thu chủ yếu từ hoạt động cho vay và môi giới, có thể đạt 378 tỷ đồng và 259 tỷ đồng trong năm 2024, tăng 20% và 69% so với năm trước. Lãi từ các tài sản tài chính ghi nhận thông qua lãi/lỗ (FVTPL) và doanh thu nghiệp vụ lưu ký có doanh thu kế hoạch năm 2024 ở mức 40 tỷ đồng và 12 tỷ đồng, gấp gần 4 lần và hơn 2 lần ước tính năm 2023. Ngược lại, lãi từ các khoản đầu tư nắm giữ đến ngày đáo hạn (&lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/HTM-tong-cong-ty-thuong-mai-ha-noi-ctcp.htm&quot;&gt;HTM&lt;/a&gt;) dự kiến đi lùi 27%, còn khoảng 54 tỷ đồng.&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Ngoài ra, năm 2024, &lt;span&gt;PHS&lt;/span&gt; đặt kế hoạch có doanh thu từ hoạt động tư vấn tài chính 500 triệu đồng, năm 2023 ước tính không ghi nhận, năm 2022 hoạt động này mang về hơn 558 triệu đồng.&lt;/p&gt;&#xD;&#xA;&lt;table class=&quot;img-content zoom&quot; align=&quot;center&quot; style=&quot;width: 640px;&quot;&gt;&#xD;&#xA;    &lt;tbody&gt;&#xD;&#xA;        &lt;tr&gt;&#xD;&#xA;            &lt;td&gt;&lt;img alt=&quot;&quot; src=&quot;https://image.vietstock.vn/2023/12/28/DT-PHS.png&quot; style=&quot;width: 640px; height: 406px; border: 0px;&quot; align=&quot;center&quot; /&gt;&lt;/td&gt;&#xD;&#xA;        &lt;/tr&gt;&#xD;&#xA;    &lt;/tbody&gt;&#xD;&#xA;&lt;/table&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;&lt;span&gt;PHS&lt;/span&gt; xây dựng kế hoạch 2024 dựa trên cơ sở các tổ chức tài chính lớn dự báo tốc độ tăng trưởng toàn cầu vẫn chậm và không đồng đều giữa các nước nhưng không bị đình trệ; lạm phát toàn cầu có dấu hiệu dần được kiểm soát, các ngân hàng trung ương trên thế giới sắp đi đến hồi kết của lộ trình tăng lãi suất và dự kiến sớm có tín hiệu đảo chiều chính sách sang nới lỏng để hỗ trợ nền kinh tế.  &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Theo Quỹ Tiền tệ Quốc tế (IMF), so với các nước khác trong khu vực, dự báo tăng trưởng GDP năm 2024 của Việt Nam ở mức 5.8%, chỉ thấp hơn mức tăng trưởng 5.9% của Philippines; còn Chính phủ Việt Nam đặt mục tiêu tăng trưởng GDP 2024 ở mức 6-6.5%.&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;“&lt;em&gt;&lt;span&gt;PHS&lt;/span&gt; tin rằng với triển vọng kinh tế toàn cầu tươi sáng hơn trong năm 2024 cùng với những chính sách hỗ trợ từ phía đầu tư trong nước sẽ giúp tăng trưởng kinh tế của Việt Nam đạt được mục tiêu của Chính phủ&lt;/em&gt;”, Công ty kỳ vọng. &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;&lt;span&gt;PHS&lt;/span&gt; ước tính &lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/ket-qua-giao-dich/vietnam.aspx&quot;&gt;VN-Index&lt;/a&gt; có thể tăng lên mức 1,460 điểm vào năm 2024, với tỷ lệ P/E trung bình là 14x. Công ty cũng kỳ vọng thu nhập trung bình của các công ty niêm yết sẽ phục hồi mạnh mẽ với mức tăng trưởng 15% so với mức nền thấp của năm 2023 và GDP cũng lấy lại tốc độ tăng trưởng ổn định quanh 6.5%. &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;&lt;span&gt;PHS&lt;/span&gt; cũng chỉ ra rủi ro lớn đối với thị trường Việt Nam là giá dầu biến động theo chiều hướng bất lợi khiến lạm phát tiếp tục kéo dài; Cục Dự trữ Liên bang Mỹ (Fed) có thể không hạ lãi suất sớm như dự kiến và ảnh hưởng đến P/E mục tiêu của thị trường.  &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Ngoài ra, rủi ro từ thị trường bất động sản trong nước đóng băng lâu hơn dự kiến cùng với tác động của đáo hạn trái phiếu doanh nghiệp kỷ lục vào năm 2024 cũng sẽ ảnh hưởng đến thanh khoản và nợ xấu của hệ thống ngân hàng, từ đó ảnh hưởng đến tâm lý thị trường và định giá.&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Năm 2024 cũng được xem là năm bước ngoặt của thị trường chứng khoán (TTCK) Việt Nam khi hệ thống mới KRX được đưa vào vận hành. Nhiều sản phẩm tài chính mới sẽ được ra mắt như giao dịch bán khống, giao dịch cổ phiếu trong ngày (T+0), giúp thu hút các nhà đầu tư tham gia, qua đó cải thiện vấn đề thanh khoản.  &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Đặc biệt, mô hình đối tác bù trừ trung tâm (&lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/CCP-ctcp-cang-cua-cam-hai-phong.htm&quot;&gt;CCP&lt;/a&gt;) được xem là nút thắt quan trọng để tháo gỡ những điều kiện còn thiếu trong vấn đề nâng hạng của TTCK Việt Nam. Từ đó, thúc đẩy dòng vốn từ các quỹ ETF lớn trên toàn cầu đổ vào thị trường. &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;&lt;span&gt;PHS&lt;/span&gt; dự báo giá trị giao dịch bình quân trên sàn &lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/HOSE-so-giao-dich-chung-khoan-thanh-pho-ho-chi-minh.htm&quot;&gt;HOSE&lt;/a&gt; và &lt;a target=&quot;_blank&quot; style=&quot;text-decoration: underline&quot; rel=&quot;noreferrer&quot; href=&quot;https://finance.vietstock.vn/HNX-so-giao-dich-chung-khoan-ha-noi.htm&quot;&gt;HNX&lt;/a&gt; trong năm 2024 có thể đạt 21,750 tỷ đồng (bao gồm cả lệnh thỏa thuận và khớp lệnh).&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Nhìn lại kết quả kinh doanh vừa qua, trên BCTC soát xét quý 3/2023, &lt;span&gt;PHS&lt;/span&gt; có doanh thu hoạt động 161 tỷ đồng, tăng 22% so với cùng kỳ; lỗ sau thuế gần 17 tỷ đồng. &lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pBody&quot;&gt;Song, lũy kế 9 tháng đầu năm 2023, &lt;span&gt;PHS&lt;/span&gt; lãi sau thuế trên 20 tỷ đồng, đi lùi 41% so với cùng kỳ và thực hiện được 17% kế hoạch lợi nhuận năm. Doanh thu hoạt động đạt 409 tỷ đồng, giảm 3% và thực hiện được trên 50% kế hoạch.&lt;/p&gt;&#xD;&#xA;&lt;table class=&quot;img-content bg-chart&quot; align=&quot;center&quot; style=&quot;width: 640px; text-align: center;&quot;&gt;&#xD;&#xA;    &lt;tbody id=&quot;ctbody&quot;&gt;&#xD;&#xA;        &lt;tr&gt;&#xD;&#xA;            &lt;td class=&quot;title-chart&quot; colspan=&quot;3&quot;&gt;&lt;strong&gt;Lãi sau thuế 9 tháng của Chứng khoán Phú Hưng giai đoạn 2019-2023&lt;/strong&gt;&lt;/td&gt;&#xD;&#xA;        &lt;/tr&gt;&#xD;&#xA;        &lt;tr id=&quot;ctr0&quot;&gt;&#xD;&#xA;            &lt;td colspan=&quot;3&quot;&gt;&#xD;&#xA;            &lt;div class=&quot;col-md-12&quot;&gt;&lt;iframe id=&quot;ifrmChart0&quot; scrolling=&quot;no&quot; frameborder=&quot;0&quot; src=&quot;https://finance.vietstock.vn/drawchart/financestatic?gui=84eaa5b2-d912-4bb8-aaff-84853bb506ab&quot; width=&quot;100%&quot; height=&quot;350&quot;&gt;&lt;/iframe&gt;&lt;/div&gt;&#xD;&#xA;            &lt;/td&gt;&#xD;&#xA;        &lt;/tr&gt;&#xD;&#xA;    &lt;/tbody&gt;&#xD;&#xA;&lt;/table&gt;&#xD;&#xA;&lt;p class=&quot;pAuthor&quot;&gt;Kha Nguyễn&lt;/p&gt;&#xD;&#xA;&lt;p class=&quot;pSource&quot;&gt;&lt;a href=&quot;http://fili.vn/2023/12/phs-dat-ke-hoach-lai-sau-thue-2024-tang-115-737-1137534.htm&quot; target=&quot;_blank&quot;&gt;FILI&lt;/a&gt;&lt;/p&gt;";

    var test2 = testText.toUnescapeString();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: HtmlWidget(
          test2,
          // ignore: avoid_print
          onTapUrl: (url) async {
            await _launchUrl(Uri.parse(url));
            return true;
          },
          textStyle: TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}

extension StringExtension on String? {
  String toUnescapeString({
    String fallback = '-',
  }) {
    if (this == null) return fallback;

    var unescape = HtmlUnescape();

    return unescape.convert(this!);
  }
}
