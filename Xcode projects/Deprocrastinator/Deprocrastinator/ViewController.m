//
//  ViewController.m
//  Deprocrastinator
//
//  Created by Jonathan Jones on 1/18/16.
//  Copyright © 2016 JJones. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextField *addRowTextField;
@property (weak, nonatomic) IBOutlet UITableView *listTableView;
@property (weak, nonatomic) IBOutlet UITableViewCell *tableRowCell;
@property NSMutableArray *textArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textArray = [[NSMutableArray alloc]init];
}

- (IBAction)addRowButton:(UIButton *)sender {
    NSString *string = [NSString stringWithFormat:@"%@", self.addRowTextField.text];
    
    [self.textArray addObject:string];
    self.addRowTextField.text = @"";
    [self.listTableView reloadData];
    [self.view endEditing:YES]; 
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.textArray.count;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    cell.textLabel.text = [self.textArray objectAtIndex:indexPath.row];
    return cell;
    
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.textArray removeObjectAtIndex:indexPath.row];
    [self.listTableView reloadData];
    
  
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.listTableView cellForRowAtIndexPath:indexPath].textLabel.textColor = [UIColor greenColor];
    
}

- (IBAction)editButton:(UIBarButtonItem *)sender {
    if (self.editing) {
        self.editing = false;
        [self.listTableView setEditing:false animated:false];
        sender.style = UIBarButtonItemStylePlain;
        [sender setTitle:@"Edit"];
    }else {
        self.editing = true;
        [self.listTableView setEditing:YES animated:YES];
        sender.style = UIBarButtonItemStyleDone;
        [sender setTitle:@"Done"];
    }
    
    
}
- (IBAction)gestureRecognizer:(UISwipeGestureRecognizer *)sender {
    
        CGPoint point = [sender locationInView:self.listTableView];
        
        NSIndexPath *indexPath = [self.listTableView indexPathForRowAtPoint:point];
        
        UITableViewCell *cell = [self.listTableView cellForRowAtIndexPath:indexPath];
        
    
        
        if (cell.textLabel.textColor == [UIColor blackColor]) {
            
            cell.textLabel.textColor = [UIColor redColor];
            
        }
        
        else if (cell.textLabel.textColor == [UIColor redColor]){
            
            cell.textLabel.textColor = [UIColor yellowColor];
            
        }
        
        else if (cell.textLabel.textColor == [UIColor yellowColor]){
            
            cell.textLabel.textColor = [UIColor greenColor];
            
        }
        
        else{
            
            cell.textLabel.textColor = [UIColor blackColor];
            
        }
        
    }
    
    
    


@end
