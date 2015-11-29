//
//  CZGroupBuyingCell.h
//  A01-团购
//


#import <UIKit/UIKit.h>

@class CZGroupBuying;

@interface CZGroupBuyingCell : UITableViewCell
@property (nonatomic, strong) CZGroupBuying *groupBuying;

+ (instancetype)groupBuyingCellWithTableView:(UITableView *)tableView;
@end
