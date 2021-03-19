//
//  UITableViewBuilder.swift
//  MobilliumBuilders
//
//  Created by Murat Celebi on 19.03.2021.
//

import UIKit

public class UITableViewBuilder<T: UITableView> {
    
    private let tableView = T()
    
    public init() {}
    
    @discardableResult
    public func backgroundColor(_ backgroundColor: UIColor) -> Self {
        self.tableView.backgroundColor = backgroundColor
        return self
    }
    
    @discardableResult
    public func rowHeight(_ rowHeight: CGFloat) -> Self {
        self.tableView.rowHeight = rowHeight
        return self
    }
    
    @discardableResult
    public func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> Self {
        self.tableView.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    @discardableResult
    public func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> Self {
        self.tableView.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    @discardableResult
    public func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
        self.tableView.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Self {
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    @discardableResult
    public func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Self {
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    @discardableResult
    public func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        self.tableView.separatorStyle = separatorStyle
        return self
    }
    
    @discardableResult
    public func separatorColor(_ separatorColor: UIColor) -> Self {
        self.tableView.separatorColor = separatorColor
        return self
    }
    
    @discardableResult
    public func separatorInset(_ separatorInset: UIEdgeInsets) -> Self {
        self.tableView.separatorInset = separatorInset
        return self
    }
    
    @discardableResult
    public func contentInset(_ contentInset: UIEdgeInsets) -> Self {
        self.tableView.contentInset = contentInset
        return self
    }
    
    @discardableResult
    public func bounces(_ bounces: Bool) -> Self {
        self.tableView.bounces = bounces
        return self
    }
    
    @discardableResult
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> Self {
        self.tableView.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    @discardableResult
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> Self {
        self.tableView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    @discardableResult
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> Self {
        self.tableView.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    public func build() -> T {
        return tableView
    }
}
