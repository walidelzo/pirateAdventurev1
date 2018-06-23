//
//  ViewController.h
//  Pirate Adventure
//
//  Created by walidelzo on 6/20/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCBoss.h"



@interface ViewController : UIViewController
#pragma mark - variables 
//Ivar
@property (nonatomic) CGPoint currentPoint;
@property (strong ,nonatomic) NSArray *tiles;
@property(strong,nonatomic) CCCharacter *charcater;
@property(strong,nonatomic) CCBoss * boss;
#pragma mark - IBOutlets
//IBoutlet
@property (weak,nonatomic) IBOutlet UIImageView *backgroudImage;
@property (weak,nonatomic) IBOutlet UILabel *healthLabel;
@property(weak,nonatomic) IBOutlet UILabel *damageLabel;
@property (weak,nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak,nonatomic) IBOutlet UILabel *armorLabel;
@property(weak,nonatomic) IBOutlet UILabel *storyLabel;
@property (weak,nonatomic) IBOutlet UIButton *actionButton;
@property (weak,nonatomic) IBOutlet UIButton *northButton;
@property (weak,nonatomic) IBOutlet UIButton *southButton;
@property(weak,nonatomic) IBOutlet UIButton *eestButton;
@property(weak,nonatomic)IBOutlet UIButton *westButton;
#pragma mark- IBActions
//ibActions
-(IBAction)actionButtonpressd:(UIButton*)sender;
-(IBAction)northButtonPressed:(UIButton*)sender;
-(IBAction)southButtonPressed:(UIButton*)sender;
-(IBAction)eastButtonPressed:(UIButton*)sender;
-(IBAction)westButtonPressed:(UIButton*)sender;
-(IBAction)resetGamepressed:(UIButton*)sender;


@end

