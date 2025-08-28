//
//  SelectRoomTypeTableViewControllerDelegate.swift
//  HotelCodable
//
//  Created by Student on 28/08/25.
//

import Foundation
protocol SelectRoomTypeTableViewControllerDelegate: AnyObject {
    func selectRoomTypeTableViewController(_ controller:
       SelectRoomTypeTableViewController, didSelect roomType:
       RoomType)
}

