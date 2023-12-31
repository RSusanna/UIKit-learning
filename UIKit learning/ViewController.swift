//
//  ViewController.swift
//  UIKit learning
//
//  Created by Susanna R on 04.08.2023.
//

import UIKit

class ViewController: UIViewController {
    // создаем новый вью
    var newView = UIView()
    // мы строим интерфейс основываясь на фрейме нашего устройства
    let frame = UIScreen.main.bounds
    
    let textView1 = UITextView()
    let textView2 = UITextView()
    let textView3 = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        // добавляем подвид нашему основному вью
        view.addSubview(newView)
        print(frame)
        // можно вот так прописать координаты и размер
        // newView.frame = CGRect(x: 100, y: 250, width: 200, height: 290)
        
        // а можно вот так:
        let size = CGSize(width: 350, height: 350)
        let point = CGPoint(x: (frame.width/2-(size.width/2)), y: (frame.height/2-(size.height/2)))
        
        
        newView.frame = CGRect(origin: point, size: size)
        newView.backgroundColor = .brown
        // у нас сейчас в итоге фон сначала серый потом коричневый
        
        
        newView.addSubview(textView1)
        newView.addSubview(textView2)
        newView.addSubview(textView3)

        textView1.frame = CGRect(x: 25, y: 150, width: 300, height: 50)
        // Устанавливаем значение 0 для автоматического переноса текста на новую строку
        textView1.isScrollEnabled = false // Если текст короткий, отключите прокрутку


        textView1.text = "FRAME: x = \(newView.frame.minX), y = \(newView.frame.minY), w = \(newView.frame.width), h = \(newView.frame.height)"
        textView2.frame = CGRect(x: 25, y: 190, width: 300, height: 50)
        textView2.text = "BOUNDS: x = \(newView.bounds.minX), y = \(newView.bounds.minY), w = \(newView.bounds.width), h = \(newView.bounds.height)"
        
        textView3.frame = CGRect(x: 25, y: 220, width: 300, height: 50)
        //такой тупейший текст чтобы я могла посмотреть как работает скролвью у юайтекствью
        textView3.text = "222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222"
        
    }
}

// MARK: - ЗАМЕТКИ
/*
виндоу - невидимый
на него наслаивается вью и это уже видимая часть
frame - внешние координаты/координаты родителя
bounds - внутренние/собственные координаты
CGPoint - это структура, которая представляет прямоугольник на плоскости с четырьмя компонентами: origin (CGPoint), определяющий начальную точку (верхний левый угол), и size (CGSize), определяющий ширину и высоту прямоугольника. Прямоугольник полностью определяется своей начальной точкой и размером. Например, прямоугольник с начальной точкой (0.0, 0.0) и размером (100.0, 50.0) будет представлен как CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: CGSize(width: 100.0, height: 50.0)).
CGSize - это структура, представляющая размер с двумя компонентами: ширина и высота.
CGRect - это структура, которая представляет прямоугольник на плоскости с четырьмя компонентами: origin (CGPoint), определяющий начальную точку (верхний левый угол), и size (CGSize), определяющий ширину и высоту прямоугольника. Прямоугольник полностью определяется своей начальной точкой и размером. Например, прямоугольник с начальной точкой (0.0, 0.0) и размером (100.0, 50.0) будет представлен как CGRect(origin: CGPoint(x: 0.0, y: 0.0), size: CGSize(width: 100.0, height: 50.0)).
 */
