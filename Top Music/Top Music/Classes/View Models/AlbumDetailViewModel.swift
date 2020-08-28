//
//  AlbumDetailViewModel.swift
//  Top Music
//
//  Created by Patrick Wilson on 8/26/20.
//  Copyright © 2020 Etechitronica. All rights reserved.
//

import Foundation

protocol AlbumDetailViewModelDelegate: class {
    func didGetError(_ error: Error)
    func detailDidChange(viewModel: AlbumDetailViewModel)
}

class AlbumDetailViewModel: NSObject, BaseViewModel {
    weak var delegate: AlbumDetailViewModelDelegate?
    
    fileprivate(set) var detail: AlbumModel? {
        didSet {
            // viewDelegate?.detailDidChange(viewModel: self)
        }
    }
    
    var model: AlbumModel? {
        didSet {
            /* model?.detail({ (item) in
                self.detail = item
            }) */
        }
    }
    
}