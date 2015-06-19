//
//  ViewController.m
//  Arrays
//
//  Created by Ronald Hernandez on 6/18/15.
//  Copyright (c) 2015 Wahoo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *videoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.videoArray = [NSArray arrayWithObjects:@"video1",@"video2",@"video3", nil];

    NSLog(@"%@", self.videoArray);

    //iterate with fast enumeration
    for (NSString *str in self.videoArray) {
        NSLog(@"%@", str);
    }

    //simply iterate through with simple for loop
    for (int i = 0; i<self.videoArray.count; i++) {
        NSLog(@"%@", [self.videoArray objectAtIndex:i]);
    }

    //You can do it in a block.

    [self.videoArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {

        //here is where you add code that's going to work on each item of the array.

        //obj is any kind of boject in the array.
        //if you set stop to true, it will stop iterating

        //convert the object to String

        NSString *videoGame = (NSString *)obj;
        NSLog(@"%@", videoGame);

    }];

    //you can add or remove things from an NSMutable Array.
    NSMutableArray *thingsIWantToDo = [NSMutableArray arrayWithObjects:@"Visit China", @"Go To Spain", @"Travel through Europe",  nil];


    //to add an object to the array.
    [thingsIWantToDo addObject:@"Run a marathon"];

    //add an object at a particular position.
    [thingsIWantToDo insertObject:@"I want to run a Tough Mudder" atIndex:2];

    NSLog(@" I wanto %@", thingsIWantToDo);

    //if you want to replace an item in an nsmutable array.

    [thingsIWantToDo replaceObjectAtIndex:0 withObject:@"Go to Italy"];

    NSLog(@"%@", thingsIWantToDo);


    //if you want to remove an item.
    [thingsIWantToDo removeObjectAtIndex:1];

    NSLog(@"%@", thingsIWantToDo);

    //if you want to get the first item.
    NSLog(@"the first thing is %@", [thingsIWantToDo firstObject]);

    //if you want the last item in the array.

    NSLog(@"the last thing is %@", [thingsIWantToDo lastObject]);

    //if you want to join all of the compents together.

    NSString *things = [thingsIWantToDo componentsJoinedByString:@" , "];

    NSLog(@"%@", things);




}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
