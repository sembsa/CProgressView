## CProgressView
Circle Progress for iOS - Swift

1. Add to you project „CProgressView.swift”
2. Add new object

### Example:

```    
var progress = CProgressView(x: 100, y: 100, height: 200, width: 200)
   
override func viewDidLoad() {
    super.viewDidLoad()
   
    self.view.addSubview(progress.progressView)
}
```
### Available method:
```
updateProgressCircle(status: Float)
changeColorBackgroundCircleProgress(stroke: UIColor?, fill: UIColor?)
changeColorRealCircleProgress(stroke: UIColor?, fill: UIColor?)
changeLineWidth(size: CGFloat)
```
