//
//  CZGroupBuying.h
//  A01-团购
//

#import <Foundation/Foundation.h>

@interface CZGroupBuying : NSObject
@property (nonatomic,copy) NSString *buyCount;
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *price;
@property (nonatomic,copy) NSString *title;

- (instancetype)initWithDic:(NSDictionary *)dic;
+ (instancetype)groupBuyingWithDic:(NSDictionary *)dic;

+ (NSMutableArray *)groupBuyingsList;

@end
