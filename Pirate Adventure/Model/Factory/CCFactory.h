//
//  CCFactory.h
//  Pirate Adventure
//
//  Created by walidelzo on 6/20/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "../CCTile.h"
#import "CCCharacter.h"
#import "CCBoss.h"
@interface CCFactory : NSObject
-(NSArray*)tiles;
-(CCCharacter *)charcter;
-(CCBoss*)boss;
@end
