//
//  ViewController.m
//  Pirate Adventure
//
//  Created by walidelzo on 6/20/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "CCViewController.h"
#import "CCFactory.h"
#import "CCTile.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CCFactory *factory=[[CCFactory alloc]init];
    self.tiles=factory.tiles;
    self.charcater=[factory charcter];
    self.boss=[factory boss];
    self.currentPoint=CGPointMake(0,0 );
    [self updateCharacterStateForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateButtons];
    [self updateTile];
   // NSLog(@"%@",self.charcater.weapon.name);

//    NSLog(@"%f , %f",self.currentPoint.x,self.currentPoint.y);
}




#pragma  mark -  Buttons Actions

-(void)actionButtonpressd:(UIButton*)sender
{
    CCTile *tile=[[self.tiles objectAtIndex: self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect==-15)
    {
        self.boss.health=self.boss.health-self.charcater.damage;
    }
    [self updateCharacterStateForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
    if (self.charcater.health<=0)
    {
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"Dead message" message:@"You lose the game resart the game " preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        [self resetGame];
        
    }else if (self.boss.health<=0){
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"victor message" message:@"you are wining" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        [self resetGame];
    }
    
    
}
-(void)northButtonPressed:(UIButton*)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateButtons];
    [self updateTile];
    
}
-(void)southButtonPressed:(UIButton*)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateButtons];
    [self updateTile];
}

-(void)eastButtonPressed:(UIButton*)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
    
}
-(void)westButtonPressed:(UIButton*)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}
-(void)resetGamepressed:(UIButton*)sender
{
    [self resetGame];
}

#pragma mark - Methods

-(void)updateTile{
    
    CCTile *tileModel= [[self.tiles objectAtIndex:self.currentPoint.x ]  objectAtIndex:self.currentPoint.y];
    self.storyLabel.text=tileModel.story;
    self.backgroudImage.image=tileModel.backgroundImage;
    self.healthLabel.text=[NSString stringWithFormat:@"%i", self.charcater.health];
    self.armorLabel.text=self.charcater.armor.name;
    self.weaponLabel.text=self.charcater.weapon.name;
    self.damageLabel.text=[NSString stringWithFormat:@"%i",self.charcater.damage];
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal ];
    
}


-(void)updateButtons{
    
    self.westButton.hidden=[self tileIsExisted:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.eestButton.hidden=[self tileIsExisted:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.northButton.hidden=[self tileIsExisted:CGPointMake(self.currentPoint.x, self.currentPoint.y+1) ];
    self.southButton.hidden=[self tileIsExisted:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
    //NSLog(@"%2.0f ,%2.0f,%i",self.currentPoint.x,self.currentPoint.y,YES);
}
-(BOOL)tileIsExisted:(CGPoint)point{
    
    if (point.x >=0 && point.y >=0 && point.x < [self.tiles count] && point.y < [[self.tiles  objectAtIndex:self.currentPoint.x] count]){
        return NO;
    }else{
    return YES;
    }
}



-(void)updateCharacterStateForArmor:(CCArmor*)armor withWeapons:(CCWeapon*)weapon withHealthEffect :(int)healthEffect{
    if (armor !=nil){
        self.charcater.health=self.charcater.health-self.charcater.armor.health+armor.health;
        self.charcater.armor=armor;
    }else if (weapon !=nil){
        self.charcater.damage=self.charcater.damage-self.charcater.weapon.damage+weapon.damage;
    }else if (healthEffect != 0){
        self.charcater.health=self.charcater.health+healthEffect;
    }else{
        self.charcater.health=self.charcater.health+self.charcater.armor.health;
        self.charcater.damage=self.charcater.damage+self.charcater.weapon.damage;
    }
    
}

-(void)resetGame{
    self.charcater=nil;
    self.boss=nil;
    [self viewDidLoad];
}



@end
