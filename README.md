# 📝 ToDoApp

**Tuist**를 기반으로 하며, 프로젝트 모듈화와 iOS 앱 아키텍처를 탐구하기 위한 사이드 프로젝트.

---

## 📌 목적 (Why this project?)

이 프로젝트는 다음을 목표로 합니다:

- `Tuist`를 통해 iOS 프로젝트를 **모듈화하고 구조적으로 관리**하는 법을 익히기 위함
- SwiftUI 기반의 앱 구조를 학습하고 직접 설계 및 개발해보기
- GitHub를 통한 코드 버전 관리 및 문서화를 연습
- **실제 업무에서 활용 가능한 구조/패턴 경험**

---

## 🏗 프로젝트 구조 (Project Structure)

```plaintext
ToDoApp/
├── Project.swift                  # Tuist 메인 구성 파일
├── Tuist/                         # Tuist 설정 및 Config 파일
├── App/                           # 앱 Entry Point (AppDelegate/Scene)
├── Features/                      # 주요 화면별 기능 모듈
│   └── ToDoList/
│       └── Sources/
├── Core/                          # 공통 Model / Storage 등
│   └── Sources/
├── DesignSystem/                 # UI 컴포넌트, 컬러, 폰트 등
│   └── Sources/
└── Tests/                         # 유닛 테스트
```

## 🧪 사용 기술 (Tech Stack)

| 카테고리     | 스택                          |
| -------- | --------------------------- |
| 언어       | Swift                       |
| UI 프레임워크 | SwiftUI                     |
| 빌드 시스템   | [Tuist](https://tuist.io/)  |
| 아키텍처     | MVVM                        |
| 데이터 저장   | UserDefaults                |
| 패키지 관리   | Swift Package Manager (SPM) |
| 버전 관리    | Git + GitHub                |

## ✨ 주요 기능 (Features)
- [x] 할 일 목록 보기 (To-do 리스트)
- [x] 할 일 추가
- [x] 할 일 삭제
- [x] 완료/미완료 토글
- [x] 로컬 저장
- [ ] 다크 모드 대응
- [ ] 디자인 시스템 모듈 적용
- [ ] Local Notification 기능
- [ ] CoreData 기반 저장소 변경
- [ ] 유닛 테스트
