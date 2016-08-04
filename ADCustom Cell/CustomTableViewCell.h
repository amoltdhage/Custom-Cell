//
//  CustomTableViewCell.h
//  ADCustom Cell
//
//  Created by Student P_02 on 03/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (weak, nonatomic) IBOutlet UILabel *place;
@end
