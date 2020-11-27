//
//  SampleInteractor.swift
//  viper
//
//  Created by @_hrkd on 2020/11/27.
//  
//

import Foundation

/*
 * Protocol that defines the Interactor's use case.
 */
protocol SampleInteractorInput: class {
    func labelTitle()->Sample
}

/*
 * The Interactor responsible for implementing
 * the business logic of the module.
 */
class SampleInteractor : SampleInteractorInput
{
    // Reference to the Presenter's output interface.
    weak var output: SampleInteractorOutput!

    func labelTitle()->Sample{
        var sample = Sample()
        sample.title = "this is label"
        return sample
    }
}
