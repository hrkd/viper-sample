//
//  SampleRouter.swift
//  viper
//
//  Created by @_hrkd on 2020/11/27.
//  
//

import UIKit

#if canImport(SwiftUI) && DEBUG
import SwiftUI

struct SampleViewRepresentable: UIViewRepresentable {
    func makeUIView(context: Context)->UIView {
        return SampleRouter.assembleModule().view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

@available(iOS 13.0, *)
struct SampleViewController_Preview: PreviewProvider {
    static var previews: some View {
        SampleViewRepresentable()
    }
}
#endif

/*
 * Protocol that defines the possible routes from the Articles module.
 */
protocol SampleWireframe {
    func showOtherView()
}

/*
 * The Router responsible for navigation between modules.
 */
class SampleRouter{
    // Reference to the ViewController (weak to avoid retain cycle).
    weak var viewController: UIViewController?

    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
    // Reference to the Router of the next VIPER module.
//    var detailsWireframe: DetailsWireframe!


    static func assembleModule() -> UIViewController {
        let view = SampleViewController()
        let interactor = SampleInteractor()
        let presenter = SamplePresenter()
        let router = SampleRouter(viewController: view)

        view.presenter = presenter
        interactor.output = presenter

        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = router

        return view
    }
}

extension SampleRouter: SampleWireframe{
    func showOtherView() {
//       let fugaView = FugaRouter.assembleModule()
//       viewController?.navigationController?.pushViewController(fugaView, animated: true)
    }
}
