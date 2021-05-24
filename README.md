# PopupRememberChoice


<p align="center">
An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.
</p>


## storyboard
![storyboard](https://github.com/ayhanunal/PopupRememberChoice/blob/master/ss/storyboard.png)


### showDialogMsg 
```swift
    func showDialogMessage(){
        let alert = UIAlertController(title: "Warning!", message: "You will go to the next page, are you sure?", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Yes", style: .default, handler: okActionClicked)
        let dontAskAgainAction = UIAlertAction(title: "Yes, Don't Ask Again", style: .cancel, handler: dontAskAgainActionClicked)
        alert.addAction(okAction)
        alert.addAction(dontAskAgainAction)
        let skipMessage = UserDefaults.standard.object(forKey: "isSkip")
        if let skipMessageCheck = skipMessage as? String{
            if skipMessageCheck != "skip"{
                UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil) //show alert
            }else{
                performSegue(withIdentifier: "toSecondVC", sender: nil)
            }
        }else{
            UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
        }
        
    }
```

<p align="center">
<img align='center' src='https://github.com/ayhanunal/PopupRememberChoice/blob/master/ss/popup.png'>
</p>


