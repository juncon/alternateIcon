# alternateIcon


![Alternate App Icon](https://user-images.githubusercontent.com/873094/196011434-282aeb77-bad1-4c6d-893e-5d052aeee2a0.gif)

## Step 1. Assets에 아이콘 추가
사용할 아이콘을 Assets에 추가합니다.
<img width="886" alt="스크린샷 2022-10-16 오전 8 42 28" src="https://user-images.githubusercontent.com/873094/196011797-da382655-be01-4730-b54f-272b1614a772.png">


## Step 2. Target Build Settings에 Alternate Icon 설정
Assets에 설정된 이름을 Target의 Build Settings - Alternate App Icon Sets에 각각 추가하고 Include All App Icon Assets를 Yes로 변경합니다. 
<img width="885" alt="스크린샷 2022-10-16 오전 8 43 53" src="https://user-images.githubusercontent.com/873094/196011799-f7d8ac4e-9913-484f-a52a-e053eef72fd6.png">


## Step 3. 코드 실행
```swift
UIApplication.shared.setAlternateIconName("iconName")
```
