import 'package:introapp/models/question_model.dart';

const questions = [
  QuestionModel("1- \nFlutter ile ilgili aşağıdakilerden hangisi doğrudur?", [
    "Flutter, hızlı, güzel, yerel olarak derlenmiş mobil uygulamalar oluşturmaya yönelik bir kullanıcı arayüzü araç setidir",
    "Flutter tek bir programlama dili ve tek bir kod tabanı kullanır",
    "Flutter ücretsiz ve açık kaynaklıdır",
    "Yukarıdakilerin hepsi",
  ]),
  QuestionModel("2- \nFlutter kimin tarafından geliştiriliyor",
      ["Oracle", "Facebook", "Google", "IBM"]),
  QuestionModel("3- \nFlutter bir dil değil bir SDK'dır.",
      ["DOĞRU", "YANLIŞ", "Doğru da Yanlış da olabilir", "Emin değilim"]),
  QuestionModel("4- \nFlutter'ın ilk Alpha versiyonu ne zaman yayınlandı?",
      ["2016", "2017", "2018", "2019"]),
  QuestionModel(
      "5- \nFlutter hangi platform için 2D mobil uygulamaları optimize etmeyi amaçlar",
      ["Android", "iOS", "İkisi de", "Yukarıdakilerden hiçbiri"]),
  QuestionModel(
      "6- \nFlutter uygulaması geliştirmek için Dart dilini bilmek gereklidir.",
      ["Evet", "Hayır", "İkisi de olabilir", "Emin değilim"]),
  QuestionModel("7- \nEkranı yenilememizi sağlayan widgetin ismi:", [
    "Stateless Widget",
    "Stateful Widget",
    "Statebuild Widget",
    "Yukarıdakilerden hepsi"
  ]),
  QuestionModel(
      "8- \nStateless Widgetlerin örnekleri aşağıdakilerden hangileridir?",
      ["Text", "Row", "Column", "Yukarıdakilerin hepsi"]),
  QuestionModel(
      "9- \npubspec.yaml dosyası aşağıdakilerden hangisini içermez?", [
    "Projenin genel ayarları",
    "Projenin dependenciesleri",
    "Projenin dili",
    "Projenin assetleri"
  ]),
  QuestionModel(
      "10- \nAşağıdakilerden hangileri Flutter'in avantajlarındandır?", [
    "Cross-platform uygulama geliştirme",
    "Hızlı uygulama geliştirme",
    "Minimum düzeyde kod ile geliştirme",
    "Yukarıdakilerden hepsi"
  ]),
  QuestionModel(
      "11- \nFlutter uygulamasını ilk defa oluşturduğunuzda, oluşması daha uzun süre alır mı?",
      ["Evet", "Hayır", "Doğru da Yanlış da olabilir", "Emin değilim"]),
  QuestionModel(
      "12- \nAşağıdakilerden hangisi ile tek bir kod tabanı içeren native bir hibrit uygulama yapılabilir?",
      ["React Native", "Flutter", "İkisi de", "Keras"]),
  QuestionModel(
      "13- \nAşağıdakilerden hangisi terminaldeki veya komut istemindeki küçük r tuşuyla çalışır?",
      ["Hot Restart", "Hot Reload", "Cold Restart", "Cold Reload"]),
  QuestionModel(
      "14- \nAşağıdakilerden hangisi uygulamanın compile edilmesi ve update edilmesi açısından daha çok zaman alıır?",
      ["Hot Reload", "Hot Restart", "Cold Reload", "Compiler'a göre değişir"]),
  QuestionModel(
      "15- \nHangi fonksiyon uygulamanın başlatılmasından sorumludur?",
      ["runApp()", "run()", "flutter()", "main()"]),
  QuestionModel("16- \n___ tip yayın olabilir.", ["0", "1", "2", "3"]),
  QuestionModel(
      "17- \nFlutter araçları uygulamayı compile ederken ___ farklı mod destekler.",
      ["2", "3", "4", "5"]),
  QuestionModel(
      "18- \nYayımlama modu, kodları optimize etmemize imkan sağlar ve \nherhangi bir debug verisi olmadan tamamen optimize eder",
      ["DOĞRU", "YANLIŞ", "Doğru da Yanlış da olabilir", "Emin değilim"]),
  QuestionModel(
      "19- \nAşağıdakilerden hangisi tek bir Widget'i test etmeye olanak sağlar?",
      ["Integration Tests", "Unit Tests", "Interactive Tests", "Widget Tests"]),
  QuestionModel("20- \nWidgetsApp temel gezime için kullanılır.",
      ["Evet", "Hayır", "Doğru da Yanlış da olabilir", "Emin değilim"]),
];

// Kaynak: https://letsfindcourse.com/mobile-development-mcq/flutter-mcq-questions-and-answers