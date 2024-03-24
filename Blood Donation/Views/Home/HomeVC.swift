//
//  HomeVC.swift
//  Blood Donation
//
//  Created by Mag isb-10 on 24/03/2024.
//

import UIKit
import FSPagerView

class HomeVC: UIViewController {
  
  @IBOutlet weak var pagerView: FSPagerView!
  @IBOutlet weak var pagerControl: FSPageControl!
  
  let images = [UIImage(named: "homeCarousel1"), UIImage(named: "homeCarousel2"), UIImage(named: "homeCarousel3"), UIImage(named: "homeCarousel4")]
  
    override func viewDidLoad() {
        super.viewDidLoad()

      pagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "HPVCell")
      pagerView.delegate = self
      pagerView.dataSource = self
      pagerView.isInfinite = true
      pagerView.automaticSlidingInterval = 2.0
      
      pagerControl.contentHorizontalAlignment = .center
      pagerControl.numberOfPages = images.count
      pagerControl.currentPage = 0
      pagerControl.itemSpacing = 16
      pagerControl.setFillColor(.lightGrey, for: .normal)
      pagerControl.setFillColor(.primaryRed, for: .selected)
    }

}

extension HomeVC: FSPagerViewDelegate, FSPagerViewDataSource {
  
  
  func numberOfItems(in pagerView: FSPagerView) -> Int {
    return images.count
  }
  
  func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
    let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "HPVCell", at: index)
    cell.imageView?.image = images[index]
    return cell
  }
  
  func pagerView(_ pagerView: FSPagerView, shouldHighlightItemAt index: Int) -> Bool {
    return false
  }
  
  func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
    pagerControl.currentPage = targetIndex
  }
  
  func pagerViewDidEndDecelerating(_ pagerView: FSPagerView) {
    pagerControl.currentPage = pagerView.currentIndex
  }
  
  func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
    pagerControl.currentPage = pagerView.currentIndex
  }
}
