# 만국박람회

## 프로젝트 저장소
> 프로젝트 기간: 2022-06-13 ~ 2022-06-24</br>
> 팀원: [브래드](https://github.com/bradheo65), [그루트](https://github.com/Groot-94)</br>
리뷰어: [@ryan-son](https://github.com/ryan-son)</br>
그라운드롤: [GroundRule](https://github.com/bradheo65/ios-exposition-universelle/blob/Step03/Docs/GroundRule.md)

## 📑 목차
- [개발자 소개](#개발자-소개)
- [프로젝트 소개](#프로젝트-소개)
- [UML](#UML)
- [구현내용](#구현내용)
- [키워드](#키워드)
- [핵심경험](#핵심경험)
- [기능설명](#기능설명)
- [Debugging](#Debugging)
- [1️⃣ Step01.md](https://github.com/bradheo65/ios-exposition-universelle/blob/Step02/Docs/Step01.md)
- [2️⃣ Step02.md](https://github.com/bradheo65/ios-exposition-universelle/blob/Step02/Docs/Step02.md)
- [3️⃣ Step03.d](https://github.com/bradheo65/ios-exposition-universelle/blob/Step03/Docs/Step03.md)

## 개발자 소개
|브래드|그루트|
|:---:|:---:|
|<image src = "https://user-images.githubusercontent.com/45350356/174251611-46adf61c-93fa-42a0-815b-2c998af1c258.png" width="250" height="250">| <image src = "https://i.imgur.com/Cxc3e7j.jpg" width="250" height="250">
|[브래드](https://github.com/bradheo65)|[그루트](https://github.com/Groot-94)|


## 프로젝트 소개
1900년 파리 만국박람회에서 소개된 한국의 문화유산을 앱으로 확인해보자.

## UML  

### [ClassDiagram]

![](https://i.imgur.com/Ng1m76J.jpg)

### [UI Sketch]

| **파리 만국박람회**|
|:---:|
|![image](https://user-images.githubusercontent.com/45350356/174562645-c130954f-fa4a-48d8-ae3a-8eb2fb7e473e.png)|
    
|**한국 출품작**|
|:---:|
|![image](https://user-images.githubusercontent.com/45350356/174557669-5c89a692-87a0-44fa-a7fa-097dcbc9207f.png)|

|**한국 출품작 세부사항**|
|:---:|
|![image](https://user-images.githubusercontent.com/45350356/174557787-59998724-284b-4819-84f3-59afc2efbab1.png)|


## 구현내용
| 파리 박람회 소개 화면 | 출품작 소개 화면 | 출품작 상세 소개 화면 |
| :--------: | :--------: | :--------: |
| <image src = "https://user-images.githubusercontent.com/45350356/175464520-5843bfb8-fee9-4374-a7cb-363c97133839.gif" width="300" height="500">     | <image src = "https://user-images.githubusercontent.com/45350356/175464949-da42a376-e3d2-4fcb-bd8a-1b45c99bbe20.gif" width="300" height="500">     | <image src = "https://user-images.githubusercontent.com/45350356/175465149-d910602a-0174-46aa-928c-8bff9173d845.gif" width="300" height="500">     |


### Dynamic Types 적용 후 화면
| 파리 박람회 소개 화면 | 출품작 소개 화면 | 출품작 상세 소개 화면 |
| :--------: | :--------: | :--------: |
| <image src = "https://user-images.githubusercontent.com/45350356/175466206-abafa378-32df-4d4f-a87a-e0469cfeacec.gif" width="300" height="500">     | <image src = "https://user-images.githubusercontent.com/45350356/175465779-13a3cdb4-a8b1-4061-b283-8a7bcd6537b4.gif" width="300" height="500">     | <image src = "https://user-images.githubusercontent.com/45350356/175466044-40dc86e8-0015-4563-a47c-92e888b0f56a.gif" width="300" height="500">     |


## 키워드
- TDD
- Json
- Delegate
- ScrollView
- TableView
    - Data Source
    - Delegate
- Word Wrapping / Line Wrapping / Line Break
- Accessibility
- Dynamic Types
## 참고문서
- [UITableView](https://developer.apple.com/documentation/uikit/uitableview)
- [Table Views](https://developer.apple.com/documentation/uikit/views_and_controls/table_views)
- [Filling a Table with Data](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/filling_a_table_with_data)
- [Configuring the Cells for Your Table](https://developer.apple.com/documentation/uikit/views_and_controls/table_views/configuring_the_cells_for_your_table)
- [JSONDecoder](https://developer.apple.com/documentation/foundation/jsondecoder)
    - [Using JSON with Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/using_json_with_custom_types)
    - [Encoding and Decoding Custom Types](https://developer.apple.com/documentation/foundation/archives_and_serialization/encoding_and_decoding_custom_types)
- [LLDB 정복하기](https://yagom.net/courses/start-lldb/)

## 핵심경험
- [x] Codable을 채택하여 JSON 데이터와 매칭할 모델 타입 구현
- [x] 스네이크 케이스 또는 축약형인 JSON 키 값을 스위프트의 네이밍에 맞게 변환
- [x] 테이블뷰의 Delegate와 Data Source의 역할의 이해
- [x] 테이블뷰의 셀의 재사용 이해
- [x] 테이블뷰의 전반적인 동작 방식의 이해
- [x] 주어진 JSON 데이터를 파싱하여 테이블뷰에 표시
- [x] 내비게이션 컨트롤러를 활용한 화면 전환
- [x] 뷰 컨트롤러 사이의 데이터 전달
- [x] 오토 레이아웃을 적용하여 다양한 기기에 대응
- [x] Word Wrapping / Line Wrapping / Line Break 방식의 이해
- [x] 접근성(Accessibility)의 개념과 필요성 이해
- [x] Dynamic Types를 통해 텍스트 접근성 향상
## 기능설명
### **ExpoInformation**
    exposition_universelle_1900.json 파일 JsonDecode를 위한 데이터 포멧 타입 구현. 
### **KoreaItem**
    items.json 파일 JsonDecode를 위한 데이터 포멧 타입 구현. 
### **ExpoData**
    exposition_universelle_1900.json 파일을 Decode 하기 위한 타입 구현.
### **ExpoNavigationController**
    메인 NavigationController 구현.
### **ExpoMainViewController** 
    메인 ViewController 구현.
### **KoreaItemTableViewController**
    한국의 출품작 ViewController 구현.
### **KoreaItemTableViewCell**
    한국의 출품작 TableView Cell 타입 구현.
### **ItemDetailViewController**
    한국의 출품작 상세 설명 ScrollView 타입 구현.
### **SendDataDelegate**
    Delegation방식의 Data 전달을 위한 Protocol 구현.
### **Int**
    Int 타입 Data parsing을 위한 Extention 구현.
### **Asset**
    Asset 파일의 NameSpace 구현.

## Debugging

### STEP 1 
#### `Json decode 테스트 nil 반환`
- ExpoInformation 구조체를 구현하고 JsonDecode를 하는 과정에서 nil이 반환되는 문제가 있었습니다. 그래서 아래의 순서대로 디버깅을 해보았습니다.

    1. Assets에서 Json 파일을 가져오는게 문제인지 LLDB를 활용해 확인했지만, 파일을 가져오고 있었습니다.
    2. 직접 Json 데이터를 작성해서 테스트 하는 방법을 사용해서 확인했으나, 동일하게 nil을 반환했습니다.
    3. ExpoInformation 구조체의 프로퍼티를 확인하는 과정에서 특정 Key에 오타가 있었음을 알 수 있었습니다.
>결론 : 하나의 Key 값에 문제가 있어도 Decode 전체에 문제가 생긴다는 걸 알 수 있었습니다.
---

### STEP 2 
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

### STEP 3 
#### 두 번째 화면의 가로모드에서 테이블뷰의 cell이 노치를 침범하는 문제
- 문제해결을 위한 시도 1
    - TableView Controller의 self.view의 Trailing.safeLayoutGuide와 TableView의 Trailing을 동일하게 설정했으나 문제해결 실패.
        - 실패이유 파악
            - TableView Controller는 기본 View가 TableView 이기 때문에 자체 뷰의 간격을 줄 수 없을거라고 생각이 들었다.
- 문제해결을 위한 시도 2
    - TableView Controller을 사용하는 방법에서 UIView Controller를 사용하고 Table View Delegate, Table View Data source를 채택하는 방법으로 수정
    - UIView Controller의 View에 Table View를 추가하고, Trailing을 설정하는 방법으로 해결.
    
| **수정 전** | 
| :--------: |
| <image src = "https://i.imgur.com/kmjHfqm.png" width="600" height="250">|
| **수정 후** |
| <image src = "https://i.imgur.com/b1ZEix8.png" width="600" height="250">|

---
