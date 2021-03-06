//
//  TuiKuanTuiHuoCell2.m
//  日淘
//
//  Created by 李强 on 2017/2/9.
//  Copyright © 2017年 LiQiang. All rights reserved.
//

#import "TuiKuanTuiHuoCell2.h"

@interface TuiKuanTuiHuoCell2()
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *titleLabel,*xinHaoLabel;
@end

@implementation TuiKuanTuiHuoCell2


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        [self drawView];
    }
    
    return self;
}

+ (TuiKuanTuiHuoCell2 *)cellWithTableView:(UITableView *)tableView
{
    static NSString *idenifier = @"TuiKuanTuiHuoCell2";
    TuiKuanTuiHuoCell2 *cell = [tableView dequeueReusableCellWithIdentifier:idenifier];
    if (cell == nil)
    {
        cell = [[TuiKuanTuiHuoCell2 alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:idenifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    return cell;
}

- (void)drawView
{
    [self addUnderlineWithLeftMargin:10 rightMargin:10 lineHeight:1 backgroundColor:HEXCOLOR(0xeeeeee)];
    
    UIImageView *iconImageView = [[UIImageView alloc] init];
    iconImageView.image = [UIImage imageNamed:@"default"];
    iconImageView.backgroundColor = [UIColor lightGrayColor];
    [self.contentView addSubview:iconImageView];
    self.iconImageView = iconImageView;
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.font = [UIFont systemFontOfSize:14];
    titleLabel.textColor = HEXCOLOR(0x333333);
    titleLabel.text = @"标题";
    titleLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    
    UILabel *xinHaoLabel = [[UILabel alloc] init];
    xinHaoLabel.font = [UIFont systemFontOfSize:14];
    xinHaoLabel.textColor = HEXCOLOR(0x898989);
    xinHaoLabel.text = @"型号：";
    xinHaoLabel.textAlignment = NSTextAlignmentLeft;
    [self.contentView addSubview:xinHaoLabel];
    self.xinHaoLabel = xinHaoLabel;
    
    iconImageView.sd_layout
    .leftSpaceToView(self.contentView,15)
    .topSpaceToView(self.contentView,15)
    .widthIs(60)
    .heightIs(60);
    
    titleLabel.sd_layout
    .leftSpaceToView(iconImageView,15)
    .topEqualToView(iconImageView)
    .heightIs(25)
    .rightSpaceToView(self.contentView,15);
    
    xinHaoLabel.sd_layout
    .leftSpaceToView(iconImageView,15)
    .bottomEqualToView(iconImageView)
    .heightIs(25)
    .rightSpaceToView(self.contentView,15);
    
}

- (void)setModel:(AfterSaleSheetCollection *)model
{
    _model = model;
    
    [self.iconImageView sd_setImageWithURL:IMAGE_URL(model.SaleGoodsPicture) placeholderImage:[UIImage imageNamed:@"default"]];
    self.titleLabel.text = model.SaleGoodsName;
    self.xinHaoLabel.text = [NSString stringWithFormat:@"型号: %@",model.SaleGoodsModel];
    
}

@end
