//
// Created by Yohom Bao on 2018-12-01.
//

#import "UnifiedAssets.h"
#import "AMapBaseLocationPlugin.h"

@implementation UnifiedAssets {

}
+ (NSString *)getAssetPath:(NSString *)asset {
    NSString *key = [AMapBaseLocationPlugin.registrar lookupKeyForAsset:asset];
    return [[NSBundle mainBundle] pathForResource:key ofType:nil];
}

+ (NSString *)getDefaultAssetPath:(NSString *)asset {
    NSString *key = [AMapBaseLocationPlugin.registrar lookupKeyForAsset:asset fromPackage:@"amap_base"];
    return [[NSBundle mainBundle] pathForResource:key ofType:nil];
}


@end
