// To parse this JSON data, do
//
//     final popularVideoResponse = popularVideoResponseFromJson(jsonString);

import 'dart:convert';
import 'dart:ffi';

PopularVideoResponse popularVideoResponseFromJson(String str) => PopularVideoResponse.fromJson(json.decode(str));

String popularVideoResponseToJson(PopularVideoResponse data) => json.encode(data.toJson());

class PopularVideoResponse {
  final List<Data>? data;
  final Pagination? pagination;
  final Meta? meta;

  PopularVideoResponse({
    this.data,
    this.pagination,
    this.meta,
  });

  PopularVideoResponse.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList(),
        pagination = (json['pagination'] as Map<String,dynamic>?) != null ? Pagination.fromJson(json['pagination'] as Map<String,dynamic>) : null,
        meta = (json['meta'] as Map<String,dynamic>?) != null ? Meta.fromJson(json['meta'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'data' : data?.map((e) => e.toJson()).toList(),
    'pagination' : pagination?.toJson(),
    'meta' : meta?.toJson()
  };
}

class Data {
  final String? type;
  final String? id;
  final String? url;
  final String? slug;
  final String? bitlyGifUrl;
  final String? bitlyUrl;
  final String? embedUrl;
  final String? username;
  final String? source;
  final String? title;
  final String? rating;
  final String? contentUrl;
  final String? sourceTld;
  final String? sourcePostUrl;
  final int? isSticker;
  final String? importDatetime;
  final String? trendingDatetime;
  final Images? images;
  final User? user;
  final String? analyticsResponsePayload;
  final Analytics? analytics;

  Data({
    this.type,
    this.id,
    this.url,
    this.slug,
    this.bitlyGifUrl,
    this.bitlyUrl,
    this.embedUrl,
    this.username,
    this.source,
    this.title,
    this.rating,
    this.contentUrl,
    this.sourceTld,
    this.sourcePostUrl,
    this.isSticker,
    this.importDatetime,
    this.trendingDatetime,
    this.images,
    this.user,
    this.analyticsResponsePayload,
    this.analytics,
  });

  Data.fromJson(Map<String, dynamic> json)
      : type = json['type'] as String?,
        id = json['id'] as String?,
        url = json['url'] as String?,
        slug = json['slug'] as String?,
        bitlyGifUrl = json['bitly_gif_url'] as String?,
        bitlyUrl = json['bitly_url'] as String?,
        embedUrl = json['embed_url'] as String?,
        username = json['username'] as String?,
        source = json['source'] as String?,
        title = json['title'] as String?,
        rating = json['rating'] as String?,
        contentUrl = json['content_url'] as String?,
        sourceTld = json['source_tld'] as String?,
        sourcePostUrl = json['source_post_url'] as String?,
        isSticker = json['is_sticker'] as int?,
        importDatetime = json['import_datetime'] as String?,
        trendingDatetime = json['trending_datetime'] as String?,
        images = (json['images'] as Map<String,dynamic>?) != null ? Images.fromJson(json['images'] as Map<String,dynamic>) : null,
        user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null,
        analyticsResponsePayload = json['analytics_response_payload'] as String?,
        analytics = (json['analytics'] as Map<String,dynamic>?) != null ? Analytics.fromJson(json['analytics'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'type' : type,
    'id' : id,
    'url' : url,
    'slug' : slug,
    'bitly_gif_url' : bitlyGifUrl,
    'bitly_url' : bitlyUrl,
    'embed_url' : embedUrl,
    'username' : username,
    'source' : source,
    'title' : title,
    'rating' : rating,
    'content_url' : contentUrl,
    'source_tld' : sourceTld,
    'source_post_url' : sourcePostUrl,
    'is_sticker' : isSticker,
    'import_datetime' : importDatetime,
    'trending_datetime' : trendingDatetime,
    'images' : images?.toJson(),
    'user' : user?.toJson(),
    'analytics_response_payload' : analyticsResponsePayload,
    'analytics' : analytics?.toJson()
  };
}

class Images {
  final Original? original;
  final FixedHeight? fixedHeight;
  final FixedHeightDownsampled? fixedHeightDownsampled;
  final FixedHeightSmall? fixedHeightSmall;
  final FixedWidth? fixedWidth;
  final FixedWidthDownsampled? fixedWidthDownsampled;
  final FixedWidthSmall? fixedWidthSmall;

  Images({
    this.original,
    this.fixedHeight,
    this.fixedHeightDownsampled,
    this.fixedHeightSmall,
    this.fixedWidth,
    this.fixedWidthDownsampled,
    this.fixedWidthSmall,
  });

  Images.fromJson(Map<String, dynamic> json)
      : original = (json['original'] as Map<String,dynamic>?) != null ? Original.fromJson(json['original'] as Map<String,dynamic>) : null,
        fixedHeight = (json['fixed_height'] as Map<String,dynamic>?) != null ? FixedHeight.fromJson(json['fixed_height'] as Map<String,dynamic>) : null,
        fixedHeightDownsampled = (json['fixed_height_downsampled'] as Map<String,dynamic>?) != null ? FixedHeightDownsampled.fromJson(json['fixed_height_downsampled'] as Map<String,dynamic>) : null,
        fixedHeightSmall = (json['fixed_height_small'] as Map<String,dynamic>?) != null ? FixedHeightSmall.fromJson(json['fixed_height_small'] as Map<String,dynamic>) : null,
        fixedWidth = (json['fixed_width'] as Map<String,dynamic>?) != null ? FixedWidth.fromJson(json['fixed_width'] as Map<String,dynamic>) : null,
        fixedWidthDownsampled = (json['fixed_width_downsampled'] as Map<String,dynamic>?) != null ? FixedWidthDownsampled.fromJson(json['fixed_width_downsampled'] as Map<String,dynamic>) : null,
        fixedWidthSmall = (json['fixed_width_small'] as Map<String,dynamic>?) != null ? FixedWidthSmall.fromJson(json['fixed_width_small'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'original' : original?.toJson(),
    'fixed_height' : fixedHeight?.toJson(),
    'fixed_height_downsampled' : fixedHeightDownsampled?.toJson(),
    'fixed_height_small' : fixedHeightSmall?.toJson(),
    'fixed_width' : fixedWidth?.toJson(),
    'fixed_width_downsampled' : fixedWidthDownsampled?.toJson(),
    'fixed_width_small' : fixedWidthSmall?.toJson()
  };
}

class Original {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;
  final String? frames;
  final String? hash;

  Original({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
    this.frames,
    this.hash,
  });

  Original.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        mp4Size = json['mp4_size'] as String?,
        mp4 = json['mp4'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?,
        frames = json['frames'] as String?,
        hash = json['hash'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'mp4_size' : mp4Size,
    'mp4' : mp4,
    'webp_size' : webpSize,
    'webp' : webp,
    'frames' : frames,
    'hash' : hash
  };
}

class FixedHeight {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;

  FixedHeight({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
  });

  FixedHeight.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        mp4Size = json['mp4_size'] as String?,
        mp4 = json['mp4'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'mp4_size' : mp4Size,
    'mp4' : mp4,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class FixedHeightDownsampled {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? webpSize;
  final String? webp;

  FixedHeightDownsampled({
    this.height,
    this.width,
    this.size,
    this.url,
    this.webpSize,
    this.webp,
  });

  FixedHeightDownsampled.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class FixedHeightSmall {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;

  FixedHeightSmall({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
  });

  FixedHeightSmall.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        mp4Size = json['mp4_size'] as String?,
        mp4 = json['mp4'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'mp4_size' : mp4Size,
    'mp4' : mp4,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class FixedWidth {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;

  FixedWidth({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
  });

  FixedWidth.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        mp4Size = json['mp4_size'] as String?,
        mp4 = json['mp4'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'mp4_size' : mp4Size,
    'mp4' : mp4,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class FixedWidthDownsampled {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? webpSize;
  final String? webp;

  FixedWidthDownsampled({
    this.height,
    this.width,
    this.size,
    this.url,
    this.webpSize,
    this.webp,
  });

  FixedWidthDownsampled.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class FixedWidthSmall {
  final String? height;
  final String? width;
  final String? size;
  final String? url;
  final String? mp4Size;
  final String? mp4;
  final String? webpSize;
  final String? webp;

  FixedWidthSmall({
    this.height,
    this.width,
    this.size,
    this.url,
    this.mp4Size,
    this.mp4,
    this.webpSize,
    this.webp,
  });

  FixedWidthSmall.fromJson(Map<String, dynamic> json)
      : height = json['height'] as String?,
        width = json['width'] as String?,
        size = json['size'] as String?,
        url = json['url'] as String?,
        mp4Size = json['mp4_size'] as String?,
        mp4 = json['mp4'] as String?,
        webpSize = json['webp_size'] as String?,
        webp = json['webp'] as String?;

  Map<String, dynamic> toJson() => {
    'height' : height,
    'width' : width,
    'size' : size,
    'url' : url,
    'mp4_size' : mp4Size,
    'mp4' : mp4,
    'webp_size' : webpSize,
    'webp' : webp
  };
}

class User {
  final String? avatarUrl;
  final String? bannerImage;
  final String? bannerUrl;
  final String? profileUrl;
  final String? username;
  final String? displayName;
  final String? description;
  final String? instagramUrl;
  final String? websiteUrl;
  final bool? isVerified;

  User({
    this.avatarUrl,
    this.bannerImage,
    this.bannerUrl,
    this.profileUrl,
    this.username,
    this.displayName,
    this.description,
    this.instagramUrl,
    this.websiteUrl,
    this.isVerified,
  });

  User.fromJson(Map<String, dynamic> json)
      : avatarUrl = json['avatar_url'] as String?,
        bannerImage = json['banner_image'] as String?,
        bannerUrl = json['banner_url'] as String?,
        profileUrl = json['profile_url'] as String?,
        username = json['username'] as String?,
        displayName = json['display_name'] as String?,
        description = json['description'] as String?,
        instagramUrl = json['instagram_url'] as String?,
        websiteUrl = json['website_url'] as String?,
        isVerified = json['is_verified'] as bool?;

  Map<String, dynamic> toJson() => {
    'avatar_url' : avatarUrl,
    'banner_image' : bannerImage,
    'banner_url' : bannerUrl,
    'profile_url' : profileUrl,
    'username' : username,
    'display_name' : displayName,
    'description' : description,
    'instagram_url' : instagramUrl,
    'website_url' : websiteUrl,
    'is_verified' : isVerified
  };
}

class Analytics {
  final Onload? onload;
  final Onclick? onclick;
  final Onsent? onsent;

  Analytics({
    this.onload,
    this.onclick,
    this.onsent,
  });

  Analytics.fromJson(Map<String, dynamic> json)
      : onload = (json['onload'] as Map<String,dynamic>?) != null ? Onload.fromJson(json['onload'] as Map<String,dynamic>) : null,
        onclick = (json['onclick'] as Map<String,dynamic>?) != null ? Onclick.fromJson(json['onclick'] as Map<String,dynamic>) : null,
        onsent = (json['onsent'] as Map<String,dynamic>?) != null ? Onsent.fromJson(json['onsent'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'onload' : onload?.toJson(),
    'onclick' : onclick?.toJson(),
    'onsent' : onsent?.toJson()
  };
}

class Onload {
  final String? url;

  Onload({
    this.url,
  });

  Onload.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?;

  Map<String, dynamic> toJson() => {
    'url' : url
  };
}

class Onclick {
  final String? url;

  Onclick({
    this.url,
  });

  Onclick.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?;

  Map<String, dynamic> toJson() => {
    'url' : url
  };
}

class Onsent {
  final String? url;

  Onsent({
    this.url,
  });

  Onsent.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?;

  Map<String, dynamic> toJson() => {
    'url' : url
  };
}

class Pagination {
  final int? totalCount;
  final int? count;
  final int? offset;

  Pagination({
    this.totalCount,
    this.count,
    this.offset,
  });

  Pagination.fromJson(Map<String, dynamic> json)
      : totalCount = json['total_count'] as int?,
        count = json['count'] as int?,
        offset = json['offset'] as int?;

  Map<String, dynamic> toJson() => {
    'total_count' : totalCount,
    'count' : count,
    'offset' : offset
  };
}

class Meta {
  final int? status;
  final String? msg;
  final String? responseId;

  Meta({
    this.status,
    this.msg,
    this.responseId,
  });

  Meta.fromJson(Map<String, dynamic> json)
      : status = json['status'] as int?,
        msg = json['msg'] as String?,
        responseId = json['response_id'] as String?;

  Map<String, dynamic> toJson() => {
    'status' : status,
    'msg' : msg,
    'response_id' : responseId
  };
}