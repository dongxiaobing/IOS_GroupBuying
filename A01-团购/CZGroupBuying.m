//
//  CZGroupBuying.m
//  A01-团购
//


#import "CZGroupBuying.h"

@implementation CZGroupBuying
- (instancetype)initWithDic:(NSDictionary *)dic
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}


+ (instancetype)groupBuyingWithDic:(NSDictionary *)dic
{
    return [[self alloc] initWithDic:dic];
}

+ (NSMutableArray *)groupBuyingsList
{
    //加载plist
    NSString *path = [[NSBundle mainBundle] pathForResource:@"tgs" ofType:@"plist"];
    NSArray *dicArray = [NSArray arrayWithContentsOfFile:path];
    
    //字典转模型
    NSMutableArray *tmpArray = [NSMutableArray array];
    for (NSDictionary *dic in dicArray) {
        CZGroupBuying *groupBuying = [CZGroupBuying groupBuyingWithDic:dic];
        [tmpArray addObject:groupBuying];
    }
    return tmpArray;
}
@end
