//
//  PageViewController.swift
//  Landmarks
//
//  Created by Suraj Ramnani on 04/05/23.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
   
    
    var pages: [Page]
    @Binding var currentpage: Int
    func makeCoordinator() -> coordinator{
        Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll, navigationOrientation: .horizontal)
        pageViewController.dataSource = context.coordinator
        pageViewController.delegate = context.coordinator
        return pageViewController
    }
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context)  {
        pageViewController.setViewControllers( [context.coordinator.controllers[currentpage]], direction: .forward, animated: true)
    }
        class coordinator: NSObject,UIPageViewControllerDataSource,UIPageViewControllerDelegate{
            var parent: PageViewController
            var controllers = [UIViewController]()
            init(_ PageViewController: PageViewController) {
                parent = PageViewController
                controllers = parent.pages.map{UIHostingController(rootView: $0)}
          
            
        }
            func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
                guard let index = controllers.firstIndex(of: viewController) else
                {
                    return nil
                }
                if index == 0 {
                    return controllers.last
                }
                return controllers[index - 1]
            }
            func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
                guard let index = controllers.firstIndex(of: viewController) else {
                    return nil
                }
                if index + 1 == controllers.count {
                    return controllers.first
                }
                return controllers[index + 1]
            }
    }
}
