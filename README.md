# Rick and Morty

Rick and Morty karakterlerini API'den çekip kartlar halinde listeleyen bir Flutter uygulaması. Kartlarda karakterin görseli, adı, durumu, türü, bulunduğu yer ve geldiği yer gösteriliyor.

HTTP isteği `HomePageViewModel` içinde yapılıyor. JSON verisi `Character` modeline çevriliyor ve Provider üzerinden ekrana aktarılıyor.

## Çalıştırma

```sh
flutter pub get
flutter run
```

Uygulama `https://rickandmortyapi.com/api/character` adresini kullanıyor. Mevcut hali ilk sayfadaki karakterleri getiriyor; sonraki sayfaları yükleyen bir akış bulunmuyor.

Veri modeli `lib/models/Rickandmorty_model.dart`, API isteği `lib/models/view_model.dart`, liste ekranı ise `lib/pages/page.dart` içinde.
