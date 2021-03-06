//
//  ProductDetailPriceCell.m
//  日淘
//
//  Created by 李强 on 2016/12/12.
//  Copyright © 2016年 LiQiang. All rights reserved.
//

#import "ProductDetailPriceCell.h"

@interface ProductDetailPriceCell ()

@property (nonatomic, weak) UILabel *nowPriceLabel;
@property (nonatomic, weak) UILabel *oldPriceLabel;
@property (nonatomic, weak) UILabel *tagLabelOne;
@property (nonatomic, weak) UILabel *tagLabelTwo;
@property (nonatomic, weak) UILabel *tagLabelThree;
@property (nonatomic, weak) UILabel *tagLabelFour;
@property (nonatomic, weak) UILabel *fuhaoLabel;
@property (nonatomic, weak) UILabel *taokePriceLabel;
@property (nonatomic, weak) UILabel *taokeLabel;

@end

@implementation ProductDetailPriceCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self drawView];
    }
    
    return self;
}

+ (ProductDetailPriceCell *)cellWithTableView:(UITableView *)tableView
{
    static NSString *idenifier = @"ProductDetailPriceCell";
    ProductDetailPriceCell *cell = [tableView dequeueReusableCellWithIdentifier:idenifier];
    if (cell == nil)
    {
        cell = [[ProductDetailPriceCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idenifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    return cell;
}

- (void)drawView
{
    [self addUnderlineWithLeftMargin:15 rightMargin:15 lineHeight:1];
    
    
    UILabel *fuhaoLabel = [[UILabel alloc]init];
    fuhaoLabel.font = [UIFont systemFontOfSize:13];
    fuhaoLabel.textColor = HEXCOLOR(0xfc4471);
    fuhaoLabel.text = @"￥";
    [self.contentView addSubview:fuhaoLabel];
    self.fuhaoLabel = fuhaoLabel;
    
    UILabel *nowPriceLabel = [[UILabel alloc] init];
    nowPriceLabel.font = [UIFont boldSystemFontOfSize:20];
    nowPriceLabel.textColor = HEXCOLOR(0xfc4471);
    nowPriceLabel.text = @"199";
    [self.contentView addSubview:nowPriceLabel];
    self.nowPriceLabel = nowPriceLabel;
    
    UILabel *oldPriceLabel = [[UILabel alloc] init];
    oldPriceLabel.font = [UIFont boldSystemFontOfSize:15];
    oldPriceLabel.textColor = HEXCOLOR(0x9a9a9c);
    oldPriceLabel.text = @"￥199";
    [self.contentView addSubview:oldPriceLabel];
    self.oldPriceLabel = oldPriceLabel;
    
    UILabel *taokePriceLabel = [[UILabel alloc] init];
    taokePriceLabel.font = [UIFont boldSystemFontOfSize:15];
    taokePriceLabel.textColor = LQRGBColor(56, 57, 132, 1);
    taokePriceLabel.text = @"￥199";
    taokePriceLabel.hidden = YES;
    [self.contentView addSubview:taokePriceLabel];
    self.taokePriceLabel = taokePriceLabel;
    
    UILabel *taokeLabel = [[UILabel alloc] init];
    taokeLabel.font = [UIFont boldSystemFontOfSize:10];
    taokeLabel.backgroundColor = LQRGBColor(56, 57, 132, 1);
    taokeLabel.textColor = [UIColor whiteColor];
    taokeLabel.text = @"淘客价";
    taokeLabel.textAlignment = NSTextAlignmentCenter;
    taokeLabel.hidden = YES;
    [self.contentView addSubview:taokeLabel];
    self.taokeLabel = taokeLabel;
    
    UILabel *tagLabelOne = [[UILabel alloc] init];
    tagLabelOne.font = [UIFont systemFontOfSize:12];
    tagLabelOne.textColor = HEXCOLOR(0xdf596a);
    tagLabelOne.text = @"包邮";
    tagLabelOne.textAlignment = NSTextAlignmentCenter;
    tagLabelOne.layer.borderColor = HEXCOLOR(0xdf596a).CGColor;
    tagLabelOne.layer.borderWidth = 0.5;
    tagLabelOne.layer.cornerRadius = 3;
    tagLabelOne.hidden = YES;
    [self.contentView addSubview:tagLabelOne];
    self.tagLabelOne = tagLabelOne;
    
    UILabel *tagLabelTwo = [[UILabel alloc] init];
    tagLabelTwo.font = [UIFont systemFontOfSize:12];
    tagLabelTwo.textColor = HEXCOLOR(0xdf596a);
    tagLabelTwo.text = @"满减";
    tagLabelTwo.textAlignment = NSTextAlignmentCenter;
    tagLabelTwo.layer.borderColor = HEXCOLOR(0xdf596a).CGColor;
    tagLabelTwo.layer.borderWidth = 0.5;
    tagLabelTwo.layer.cornerRadius = 3;
    tagLabelTwo.hidden = YES;
    [self.contentView addSubview:tagLabelTwo];
    self.tagLabelTwo = tagLabelTwo;
    
    UILabel *tagLabelThree = [[UILabel alloc] init];
    tagLabelThree.font = [UIFont systemFontOfSize:12];
    tagLabelThree.textColor = HEXCOLOR(0xdf596a);
    tagLabelThree.text = @"满减";
    tagLabelThree.textAlignment = NSTextAlignmentCenter;
    tagLabelThree.layer.borderColor = HEXCOLOR(0xdf596a).CGColor;
    tagLabelThree.layer.borderWidth = 0.5;
    tagLabelThree.layer.cornerRadius = 3;
    tagLabelThree.hidden = YES;
    [self.contentView addSubview:tagLabelThree];
    self.tagLabelThree = tagLabelThree;
    
    UILabel *tagLabelFour = [[UILabel alloc] init];
    tagLabelFour.font = [UIFont systemFontOfSize:12];
    tagLabelFour.textColor = HEXCOLOR(0xdf596a);
    tagLabelFour.text = @"满减";
    tagLabelFour.textAlignment = NSTextAlignmentCenter;
    tagLabelFour.layer.borderColor = HEXCOLOR(0xdf596a).CGColor;
    tagLabelFour.layer.borderWidth = 0.5;
    tagLabelFour.layer.cornerRadius = 3;
    tagLabelFour.hidden = YES;
    [self.contentView addSubview:tagLabelFour];
    self.tagLabelFour = tagLabelFour;
    
    fuhaoLabel.sd_layout
    .leftSpaceToView(self.contentView,15)
    .centerYEqualToView(self.contentView)
    .heightIs(13);
    [fuhaoLabel setSingleLineAutoResizeWithMaxWidth:50];
    
    nowPriceLabel.sd_layout
    .leftSpaceToView(fuhaoLabel,0)
    .topSpaceToView(self.contentView,11)
    .heightIs(20);
    [nowPriceLabel setSingleLineAutoResizeWithMaxWidth:150];
    
    oldPriceLabel.sd_layout
    .leftSpaceToView(nowPriceLabel,10)
    .centerYEqualToView(fuhaoLabel)
    .heightRatioToView(nowPriceLabel,1);
    [oldPriceLabel setSingleLineAutoResizeWithMaxWidth:100];
    
    taokePriceLabel.sd_layout
    .leftSpaceToView(nowPriceLabel,10)
    .centerYEqualToView(fuhaoLabel)
    .heightRatioToView(nowPriceLabel,1);
    [taokePriceLabel setSingleLineAutoResizeWithMaxWidth:100];
    
    taokeLabel.sd_layout
    .leftSpaceToView(taokePriceLabel,3)
    .topEqualToView(taokePriceLabel)
    .widthIs(40).heightIs(13);
    taokeLabel.sd_cornerRadiusFromHeightRatio = @(0.5);
    
    tagLabelOne.sd_layout
    .leftSpaceToView(oldPriceLabel,10)
    .centerYEqualToView(nowPriceLabel)
    .heightIs(20)
    .widthIs(40);
    
    tagLabelTwo.sd_layout
    .leftSpaceToView(tagLabelOne,5)
    .centerYEqualToView(nowPriceLabel)
    .heightIs(20)
    .widthIs(40);
    
    tagLabelThree.sd_layout
    .leftSpaceToView(tagLabelTwo,5)
    .centerYEqualToView(nowPriceLabel)
    .heightIs(20)
    .widthIs(40);
    
    tagLabelFour.sd_layout
    .leftSpaceToView(tagLabelThree,5)
    .centerYEqualToView(nowPriceLabel)
    .heightIs(20)
    .widthIs(40);
}

- (void)setModel:(ModelSaleProductDetail *)model
{
    _model = model;
    
    
//    NSMutableAttributedString *att = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@",model.Price.MoneySymbol] attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:10],NSForegroundColorAttributeName:HEXCOLOR(0xfc4471)}];
//    [att appendAttributedString:[[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%@",model.Price.Value] attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18],NSForegroundColorAttributeName:HEXCOLOR(0xfc4471)}]];
    
//    self.nowPriceLabel.attributedText = att;
    self.fuhaoLabel.text = [NSString stringWithFormat:@"%@",model.Price.MoneySymbol];
    self.nowPriceLabel.text = [NSString stringWithFormat:@"%@",model.Price.Value];
    
    NSDictionary *dic = @{NSStrikethroughStyleAttributeName:[NSNumber numberWithInteger:NSUnderlineStyleSingle],
                          NSFontAttributeName:[UIFont systemFontOfSize:14],
                          NSForegroundColorAttributeName:HEXCOLOR(0x9a9a9c)};
    NSString *str = [NSString stringWithFormat:@"%@%@",model.MarketPrice.MoneySymbol,model.MarketPrice.Value];
    NSMutableAttributedString *oldPriceAtt = [[NSMutableAttributedString alloc] initWithString:str attributes:dic];
    self.oldPriceLabel.attributedText = oldPriceAtt;
    

    
    self.tagLabelOne.hidden = YES;
    self.tagLabelTwo.hidden = YES;
    self.tagLabelThree.hidden = YES;
    self.tagLabelFour.hidden = YES;
    
    int i = 0;
    for (ModelSaleCouponCollection *modelmodel in model.SaleCouponCollection)
    {
        if (i == 0)
        {
            self.tagLabelOne.hidden = NO;
            self.tagLabelOne.text = modelmodel.Indicator;
        }
        if (i == 1)
        {
            self.tagLabelTwo.hidden = NO;
            self.tagLabelTwo.text = modelmodel.Indicator;
        }
        if (i == 2)
        {
            self.tagLabelThree.hidden = NO;
            self.tagLabelThree.text = modelmodel.Indicator;
        }
        if (i == 3)
        {
            self.tagLabelFour.hidden = NO;
            self.tagLabelFour.text = modelmodel.Indicator;
        }
        
        i ++;
    }
}

-(void)setModel2:(ModelSaleProductDetail *)model2 {
    _model2 = model2 ;
    
    if(model2.MemberPrice.Value) {
        NSLog(@"========");
        
        self.oldPriceLabel.hidden = YES;
        self.taokePriceLabel.hidden = NO;
        self.taokeLabel.hidden = NO;
        self.taokePriceLabel.text = [NSString stringWithFormat:@"%@%@",model2.MemberPrice.MoneySymbol,model2.MemberPrice.Value];
    }
    
}

@end
