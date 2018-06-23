//
//  CCTile.h
//  Pirate Adventure
//
//  Created by walidelzo on 6/20/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "CCCharacter.h"
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCTile : NSObject

@property (strong,nonatomic) NSString *story;
@property (strong,nonatomic) UIImage *backgroundImage;
@property (strong,nonatomic) NSString *actionButtonName;
@property(strong,nonatomic) CCArmor *armor;
@property(strong,nonatomic) CCWeapon *weapon;
@property(strong,nonatomic) CCCharacter *character;
@property(nonatomic) int healthEffect;
@end
