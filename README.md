## CProgressView
Circle Progress for iOS - Swift

1. Add View in Interface Builder
2. Set Class "CProgressView"                                      
<a href="http://imgur.com/Alm5pmu"><img src="http://i.imgur.com/Alm5pmu.png" title="source: imgur.com" /></a>

3. Manage CProgressView in Interface Builder
<a href="http://imgur.com/wKzhMMP"><img src="http://i.imgur.com/wKzhMMP.png" title="source: imgur.com" /></a>

4. Set in code @IBOutlet
```Swift
@IBOutlet weak var viewForTest: CProgressView!
```

### Available method:
####You can put a picture in the middle
```Swift
updateProgressCircle(status: Float)
resetProgressCircle()
changeColorBackgroundCircleProgress(stroke: UIColor?, fill: UIColor?)
changeColorRealCircleProgress(stroke: UIColor?, fill: UIColor?)
changeLineWidth(size: CGFloat)
```
### Screenshot
<a href="http://imgur.com/wyTldWH"><img src="http://i.imgur.com/wyTldWH.png" title="source: imgur.com" /></a>
