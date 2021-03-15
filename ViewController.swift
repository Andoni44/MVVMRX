//
//  ViewController.swift
//  MVVMRX
//
//  Created by Andoni Da silva on 13/3/21.
//

import UIKit
import RxSwift
import RxCocoa

final class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let disposeBag = DisposeBag()
    private var viewModel: RestaurantsListViewModel!

    static func instantiate(viewModel: RestaurantsListViewModel) -> UIViewController {
        let sb = UIStoryboard(name: "Main", bundle: .main)
        if let vc = sb.instantiateInitialViewController() as? ViewController {
            vc.viewModel = viewModel
            return vc
        } else {
            return UIViewController()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFront()
        viewModel.fetchRestaurantViewModels()
            .observe(on: MainScheduler.instance)
            .bind(to: tableView.rx.items(cellIdentifier: "cell")) { index, viewModel, cell in
            cell.textLabel?.text = viewModel.displayText
        }.disposed(by: disposeBag)
    }
}

// MARK: - Front
private extension ViewController {
    
    func setupFront() {
        tableView.tableFooterView = UIView()
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
        tableView.contentInsetAdjustmentBehavior = .never
    }
}
