//
//  ViewController.swift
//  QuotesGenarator
//
//  Created by YUL on 2021/09/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var NameLabel: UILabel!
    let quotes = [
        Quote(contents: "사이타마는 신이다", name: "황재국"),
        Quote(contents: "내가왜 ㅋㅋ", name: "이지호"),
        Quote(contents: "요로결석쉨!", name: "김준철")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tabQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(3))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.NameLabel.text = quote.name
    }
    

}

