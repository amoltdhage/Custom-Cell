//
//  ViewController.m
//  ADCustom Cell
//
//  Created by Student P_02 on 03/08/16.
//  Copyright © 2016 Amol Dhage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    arrayForCell = [[NSMutableArray alloc]initWithObjects:@"Aashish Sir",@"Pawan",@"Akshay",@"Ajinkya",@"Amol",nil];
    
    arraydetails =[[NSMutableArray alloc]initWithObjects:@"Kerala",@"Bhosari Pune ",@"Satara",@"Amravati",@"Jamod",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -UITableView Delegate & Datasource

-(NSInteger)numberOfSectionInTableView:(UITableView *)tableView
{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayForCell.count;
}

-(CustomTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"custumCell"];
    
    cell.name.text = [arrayForCell objectAtIndex:indexPath.row];
    
    cell.place.text = [arraydetails objectAtIndex:indexPath.row];
    
    NSString *imageName = [[arrayForCell objectAtIndex:indexPath.row] stringByAppendingString:@".jpeg"];
    
    cell.image.image = [UIImage imageNamed:imageName];
    
    
    return cell;
}


@end
