//
//  Instantiatable.swift
//  Pods
//
//  Created by Hiroshi Kimura on 2/26/16.
//
//

import Foundation

#if os(iOS)
    import UIKit
    
    public protocol Instantiatable: class {
        
        static func instantiate() -> Self
    }
    
    public protocol InstantiatableFromXIB: Instantiatable {
        
    }
    
    public protocol InstantiatableFromStoryboard: Instantiatable {
        
    }
    
    extension InstantiatableFromXIB where Self: UIViewController {
        
        public static func instantiate() -> Self {
            
            return self.init(nibName: String(self), bundle: NSBundle(forClass: self))
        }
    }
    
    extension InstantiatableFromXIB where Self: UIView {
        
        public static func instantiate() -> Self {
            
            return UINib(nibName: String(self), bundle: NSBundle(forClass: self)).instantiateWithOwner(nil, options: nil).first! as! Self
        }
    }
    
    extension InstantiatableFromStoryboard where Self: UIViewController {
        
        public static func instantiate() -> Self {
            let storyboard = UIStoryboard(name: String(self), bundle: NSBundle(forClass: self))
            return storyboard.instantiateInitialViewController() as! Self
        }
    }
#endif
