// ignore: import_of_legacy_library_into_null_safe
import 'package:fin_quote/fin_quote.dart';

class FinQuote {
  Map<String, Map<String, dynamic>> penis;

  FinQuote(this.penis);

  Future<double> main(List<String> arguments) async {
    final Map<String, Map<String, dynamic>> quoteRaw =
        await FinanceQuote.getRawData(
            quoteProvider: QuoteProvider.yahoo,
            symbols: <String>['KO', 'GOOG']);

    return quoteRaw['GOOG']!['regularMarketPrice'];

    // print('Number of quotes retrieved: ${quoteRaw.keys.length}.');
    // print(
    //     'Number of attributes retrieved for KO: ${quoteRaw['KO']!.keys.length}.');
    // print(
    //     'Current market price for KO: ${quoteRaw['GOOG']!['regularMarketPrice']}.');
    // print(
    //     'Number of attributes retrieved for GOOG: ${quoteRaw['GOOG']!.keys.length}.');
    // print(
    //     'Current market price for KO: ${quoteRaw['GOOG']!['regularMarketPrice']}.');
  }
}
