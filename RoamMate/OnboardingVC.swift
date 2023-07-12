//
//  OnboardingVC.swift
//  RoamMate
//
//  Created by ziya on 11.07.23.
//

import UIKit

class OnboardingVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextButton: UIButton!
    
    var slides: [OnboardingModel] = []
    
    var currentPage = 0 {
        didSet {
            pageControl.currentPage = currentPage
            if currentPage == slides.count - 1 {
                nextButton.setTitle("GET STARTED", for: .normal)
            } else {
                nextButton.setTitle("NEXT", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        slides = [
            OnboardingModel(image: UIImage(named: "Image")! , title: "Jobs fill your pocket, Adventures fill your soul", subtitle: "Jobs fill your pocket, Adventures fill your soul"),
            OnboardingModel(image: UIImage(named: "Image1")!, title: "Live life with no excuses, Travel with no regret", subtitle: "Travelling refers to a trip or a journey to some distant places. It usually refers to visiting more than one places."),
            OnboardingModel(image:  UIImage(named: "Image2")!, title: "The world within reach.To Travel is to Live", subtitle: " There is craving in every person to see the other faces of nature and to know the other people of the world.")
        ]
        
        pageControl.numberOfPages = slides.count
    }
    

    @IBAction func netxButtonPressed(_ sender: UIButton) {
        if currentPage == slides.count - 1 {
            Routing.shared.presentSignUpVC { vc in
                self.present(vc, animated: true)
            }
            }else {
                currentPage += 1
                let indexPath = IndexPath(item: currentPage, section: 0)
                collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            }
        }

    }


extension OnboardingVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! OnboardingCollectionViewCell
        cell.configure(slides[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
        let width = self.collectionView.frame.width
        let height = self.collectionView.frame.height
        
        return CGSize(width: width, height: height)
        }
    
}
