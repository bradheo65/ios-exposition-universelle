## 2️⃣ STEP 2
### STEP 2 Questions
- 코드 네이밍 시 보통 단수, 복수형으로 작성하는지 궁금 합니다. 예를 들어 `TableView`의 `cell` 안에 item이 여러개 있는 상황이라면 `Items`, 그렇지 않으면 `item`으로 작성해줘야 코드만 보았을 때 그 뜻이 명확한 지 헷갈리네요!
- `sceneDelegate`와 `appDelegate`의 경우는 Controller로 분리해야 할 지 View로 분리해야 할 지 고민했습니다.
    - MVC에 맞게 파일을 분리하는 과정에서 `sceneDelegate`와 `appDelegate`를 어떤 영역으로 봐야하는지에 대한 고민을 했습니다. `sceneDelegate`의 경우 View Life Cycle을 담당하고 appDelegate는 App Life Cycle의 역할을 한다고 알고 있습니다. 각각의 역할에 맞게 분리한다면 어떤 영역으로 봐야 하는지에 대해 생각해 보았습니다. 라이언은 어떻게 생각하시는지 궁금합니다.   
        - 브래드: `sceneDelegate`와 `appDelegate`는 화면 전환에 대한 역활을 해주는 것으로 생각하고 있고, `UIKit`를 라이브러리로 가지고 가는 기능들은 `View`로 생각해서 Controller로 생각했습니다.
        - 그루트: `sceneDelegate`에서 Window를 구성하고, 직접적으로 View를 조작하는게 아닌 View의 변화를 전달받아 특정 메서드를 실행하기 때문에 View의 영역이라고 생각했습니다. `appDelegate`는 사실 잘 모르겠습니다.'

---
### STEP 2 Answers
---
### STEP 2 Debugging
#### 이미지 뷰 크기 설정 과정
- 이미지 뷰 크기를 정해서 스택뷰에 넣는 방법으로 했을 때와 이미지 뷰 크기 설정 없이 스택 뷰의 높이만 크기를 설정했을 때 차이점에 대해 진행해 보았다.
#### 이전화면 코드
```swift
let rightKoreanFlagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "flag")
        imageView.contentMode = .scaleAspectFit
}()

private func setSubStackViewConstraints() {
        expo1900SubStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor).isActive = true
        expo1900SubStackView.bottomAnchor.constraint(equalTo: expo1900StackView.bottomAnchor).isActive = true
        expo1900SubStackView.leadingAnchor.constraint(equalTo: expo1900StackView.leadingAnchor).isActive = true
        expo1900SubStackView.trailingAnchor.constraint(equalTo: expo1900StackView.trailingAnchor).isActive = true
        expo1900SubStackView.widthAnchor.constraint(equalTo: expo1900StackView.widthAnchor).isActive = true
        expo1900SubStackView.heightAnchor.constraint(lessThanOrEqualToConstant: 50).isActive = true
    }
```
#### 수정화면 코드
```swift
    let expo1900SubStackView: UIStackView = {
    let stackView = UIStackView()
    
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = .horizontal
    stackView.alignment = .center
    stackView.distribution = .equalCentering
    return stackView
    }()
    
    let leftFlagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "flag")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let rightFlagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "flag")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nextViewButton: UIButton = {
        let button = UIButton()
        button.setTitle("한국의 출품작 보러가기", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setContentCompressionResistancePriority(UILayoutPriority(751), for: .horizontal)
        button.addTarget(nil, action: #selector(tappedNextViewButtonEvent), for: .touchUpInside)
        return button
    }()    
```

|이전화면|수정화면|
|:---:|:---:|
|<image src = "https://user-images.githubusercontent.com/45350356/174255420-fcae28f0-87d5-4a03-b60d-6e532b1372fa.png" width="300" height="700">|<image src = "https://i.imgur.com/rYGiTFj.png" width="300" height="700"> |

- 이미지 뷰 넓이 지정(최대 50) → 스택 뷰 높이 지정(최대 50) → 우선 순위 지정 → Prior를 값(750)에서 751로 수정
- 최종적으로는 ImageView와 Button을 포함하는 StackView의 설정을 변경해서 원하는 결과를 얻을 수 있었다
---
### STEP 2 Concepts
- ScrollView
- TableView
    - Cell
    - Data Source
    - Data Delegate
- NavigationViewController
---
### STEP 2 Reviews
---
### STEP 2 Updates