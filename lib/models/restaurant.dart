import './location.dart';
import './r.dart';
import './user_rating.dart';

class Restaurant {
  R r;
  String apikey;
  String id;
  String name;
  String url;
  Location location;
  int switchToOrderMenu;
  String cuisines;
  int averageCostForTwo;
  int priceRange;
  String currency;
  int opentableSupport;
  int isZomatoBookRes;
  String mezzoProvider;
  int isBookFormWebView;
  String bookFormWebViewUrl;
  String bookAgainUrl;
  String thumb;
  UserRating userRating;
  String photosUrl;
  String menuUrl;
  String featuredImage;
  int hasOnlineDelivery;
  int isDeliveringNow;
  String storeType;
  bool includeBogoOffers;
  String deeplink;
  int isTableReservationSupported;
  int hasTableBooking;
  String eventsUrl;
  String orderUrl;
  String orderDeeplink;

  Restaurant(
      {this.r,
      this.apikey,
      this.id,
      this.name,
      this.url,
      this.location,
      this.switchToOrderMenu,
      this.cuisines,
      this.averageCostForTwo,
      this.priceRange,
      this.currency,
      this.opentableSupport,
      this.isZomatoBookRes,
      this.mezzoProvider,
      this.isBookFormWebView,
      this.bookFormWebViewUrl,
      this.bookAgainUrl,
      this.thumb,
      this.userRating,
      this.photosUrl,
      this.menuUrl,
      this.featuredImage,
      this.hasOnlineDelivery,
      this.isDeliveringNow,
      this.storeType,
      this.includeBogoOffers,
      this.deeplink,
      this.isTableReservationSupported,
      this.hasTableBooking,
      this.eventsUrl,
      this.orderUrl,
      this.orderDeeplink});

  Restaurant.fromJson(Map<String, dynamic> json) {
    r = json['R'] != null ? new R.fromJson(json['R']) : null;
    apikey = json['apikey'];
    id = json['id'];
    name = json['name'];
    url = json['url'];
    location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    switchToOrderMenu = json['switch_to_order_menu'];
    cuisines = json['cuisines'];
    averageCostForTwo = json['average_cost_for_two'];
    priceRange = json['price_range'];
    currency = json['currency'];
    opentableSupport = json['opentable_support'];
    isZomatoBookRes = json['is_zomato_book_res'];
    mezzoProvider = json['mezzo_provider'];
    isBookFormWebView = json['is_book_form_web_view'];
    bookFormWebViewUrl = json['book_form_web_view_url'];
    bookAgainUrl = json['book_again_url'];
    thumb = json['thumb'];
    userRating = json['user_rating'] != null
        ? new UserRating.fromJson(json['user_rating'])
        : null;
    photosUrl = json['photos_url'];
    menuUrl = json['menu_url'];
    featuredImage = json['featured_image'];
    hasOnlineDelivery = json['has_online_delivery'];
    isDeliveringNow = json['is_delivering_now'];
    storeType = json['store_type'];
    includeBogoOffers = json['include_bogo_offers'];
    deeplink = json['deeplink'];
    isTableReservationSupported = json['is_table_reservation_supported'];
    hasTableBooking = json['has_table_booking'];
    eventsUrl = json['events_url'];
    orderUrl = json['order_url'];
    orderDeeplink = json['order_deeplink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.r != null) {
      data['R'] = this.r.toJson();
    }
    data['apikey'] = this.apikey;
    data['id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    if (this.location != null) {
      data['location'] = this.location.toJson();
    }
    data['switch_to_order_menu'] = this.switchToOrderMenu;
    data['cuisines'] = this.cuisines;
    data['average_cost_for_two'] = this.averageCostForTwo;
    data['price_range'] = this.priceRange;
    data['currency'] = this.currency;
    data['opentable_support'] = this.opentableSupport;
    data['is_zomato_book_res'] = this.isZomatoBookRes;
    data['mezzo_provider'] = this.mezzoProvider;
    data['is_book_form_web_view'] = this.isBookFormWebView;
    data['book_form_web_view_url'] = this.bookFormWebViewUrl;
    data['book_again_url'] = this.bookAgainUrl;
    data['thumb'] = this.thumb;
    if (this.userRating != null) {
      data['user_rating'] = this.userRating.toJson();
    }
    data['photos_url'] = this.photosUrl;
    data['menu_url'] = this.menuUrl;
    data['featured_image'] = this.featuredImage;
    data['has_online_delivery'] = this.hasOnlineDelivery;
    data['is_delivering_now'] = this.isDeliveringNow;
    data['store_type'] = this.storeType;
    data['include_bogo_offers'] = this.includeBogoOffers;
    data['deeplink'] = this.deeplink;
    data['is_table_reservation_supported'] = this.isTableReservationSupported;
    data['has_table_booking'] = this.hasTableBooking;
    data['events_url'] = this.eventsUrl;
    data['order_url'] = this.orderUrl;
    data['order_deeplink'] = this.orderDeeplink;
    return data;
  }
}