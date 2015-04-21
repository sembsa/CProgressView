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
<a href="http://pl.tinypic.com?ref=15ph3jk" target="_blank"><img src="http://i57.tinypic.com/15ph3jk.png" border="0" alt="Image and video hosting by TinyPic"></a>
