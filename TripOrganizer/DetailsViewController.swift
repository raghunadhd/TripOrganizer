//
//  DetailsViewController.swift
//  TripOrganizer
//
//  Created by Rakesh Maurya on 9/24/17.
//  Copyright © 2017 tripOrganizer. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var tripIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tripIDLabel.text = "Trip ID : "+tripID
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func itineraryAction(_ sender: Any) {
        if let pdf = Bundle.main.url(forResource: tripID+"_itinerary", withExtension: "pdf"){
           let webView = UIWebView(frame:self.view.frame)
           let  urlRequest = URLRequest(url: pdf)
           webView.loadRequest(urlRequest as URLRequest)
           webView.scalesPageToFit = true
        //    self.view.addSubview(webView)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = tripID+" Itinerary"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        } else {
            print("error")
        }
    }
    
    @IBAction func agendaAction(_ sender: Any) {
        if let pdf = Bundle.main.url(forResource: tripID+"_agenda", withExtension: "pdf"){
            let webView = UIWebView(frame:self.view.frame)
            let  urlRequest = URLRequest(url:pdf)
            webView.loadRequest(urlRequest as URLRequest)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = tripID+" Agenda"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
   }
    
    @IBAction func placesToVisitAction(_ sender: Any) {
        if let pdf = Bundle.main.url(forResource: tripID+"_visit", withExtension: "pdf"){
            let webView = UIWebView(frame:self.view.frame)
            let  urlRequest = URLRequest(url:pdf)
            webView.loadRequest(urlRequest as URLRequest)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = tripID+" Visit"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }    }
    
    
    @IBAction func contactsAction(_ sender: Any) {
        if let pdf = Bundle.main.url(forResource: tripID+"_contact", withExtension: "pdf"){
            let webView = UIWebView(frame:self.view.frame)
            let  urlRequest = URLRequest(url:pdf)
            webView.loadRequest(urlRequest as URLRequest)
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = tripID+" Contact"
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }    }
    
}
