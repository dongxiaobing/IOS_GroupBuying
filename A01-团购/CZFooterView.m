//
//  CZFooterView.m
//  A01-团购
//


#import "CZFooterView.h"

@interface CZFooterView ()
@property (weak, nonatomic) IBOutlet UIButton *loadMoreBtn;
- (IBAction)loadMoreClick;

@property (weak, nonatomic) IBOutlet UIView *loadMoreView;

@end

@implementation CZFooterView

+ (instancetype)footerView
{
    CZFooterView *footerView = [[[NSBundle mainBundle] loadNibNamed:@"CZFooterView" owner:nil options:nil] lastObject];
    
    //设置按钮的圆角
    footerView.loadMoreBtn.layer.cornerRadius = 5;
    footerView.loadMoreBtn.layer.masksToBounds = YES;
    
    return footerView;
}

- (IBAction)loadMoreClick {
    self.loadMoreBtn.hidden = YES;
    self.loadMoreView.hidden = NO;
    
//延时执行
//    [self performSelector:<#(SEL)#> withObject:<#(id)#> afterDelay:<#(NSTimeInterval)#>];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.loadMoreBtn.hidden = NO;
        self.loadMoreView.hidden = YES;
        
        //3 向代理对象发送消息
        if ([self.delegate respondsToSelector:@selector(footerViewDidClickedLoadMoreBtn:)]) {
            [self.delegate footerViewDidClickedLoadMoreBtn:self];
        }
    });
    
}
@end
