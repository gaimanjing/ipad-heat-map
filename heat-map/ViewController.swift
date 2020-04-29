//  ViewController.swift
//  heat-map
//
//  Created by gaimanjing on 2020/4/29.
//  Copyright © 2020 gaimanjing. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BMKMapViewDelegate {
    var mapView: BMKMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapView = BMKMapView(frame: self.view.frame)
        mapView?.delegate = self
        self.view.addSubview(mapView!);
        
        //切换为标准地图
        mapView?.mapType = BMKMapType.standard
        
        //打开百度城市热力图图层（百度自有数据）
        mapView?.isBaiduHeatMapEnabled = true
        
        //显示定位图层
        mapView?.showsUserLocation = true
        
        //百度城市热力图    11-20级
        mapView?.zoomLevel = 13
        mapView?.centerCoordinate = CLLocationCoordinate2D(latitude: 30.261068, longitude: 120.191076)  //杭州
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        mapView?.viewWillAppear()
    }
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        mapView?.viewWillDisappear()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView?.frame = self.view.bounds
    }
    
}

