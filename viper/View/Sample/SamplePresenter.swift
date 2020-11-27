//
//  SamplePresenter.swift
//  viper
//
//  Created by @_hrkd on 2020/11/27.
//  
//

import Foundation

/*
 * Protocol that defines the commands sent from the View to the Presenter.
 */
protocol SampleModuleInterface: class {
}

/*
 * Protocol that defines the commands sent from the Interactor to the Presenter.
 */
protocol SampleInteractorOutput: class {
    func updateLabel()->Sample
}

/*
 * The Presenter is also responsible for connecting
 * the other objects inside a VIPER module.
 */
class SamplePresenter : SampleModuleInterface, SampleInteractorOutput
{
    // Reference to the View (weak to avoid retain cycle).
    weak var view: SampleViewInterface!

    // Reference to the Interactor's interface.
    var interactor: SampleInteractorInput!

    // Reference to the Router
    var wireframe: SampleWireframe!

    func updateLabel()->Sample {
        return self.interactor.labelTitle()
    }
}
