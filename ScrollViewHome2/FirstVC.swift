//
//  FirstVC.swift
//  ScrollViewHome2
//
//  Created by Edmon Avagyan on 29.12.22.
//

import UIKit

class FirstVC: UIViewController {
    @IBOutlet weak var scrollVC: UIScrollView!
    @IBOutlet weak var imageVC: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
        // Do any additional setup after loading the view.
    }
    
    func setupScrollView() {
        scrollVC.delegate = self
        scrollVC.minimumZoomScale = 1
        scrollVC.maximumZoomScale = 10
        scrollVC.setZoomScale(1, animated: true)
        scrollVC.contentSize = CGSize(width: scrollVC.frame.size.width * 2, height: scrollVC.frame.height * 2)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension FirstVC: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageVC
    }
}
