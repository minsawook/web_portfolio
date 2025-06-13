class Recommendation {
  final String? name, source, text, period;

  Recommendation({this.name, this.source, this.text, this.period});
}

final List<Recommendation> demo_recommendations = [
  Recommendation(
    name: "아인(주)",
    source: "",
    text: "플러터 앱 및 Qt 프로그램 개발",
    period: "2022-02월 ~ 2023-06월(1년 4개월)",
  ),
  Recommendation(
    name: "로완",
    source: "",
    text: "디지털 의료기기 어플리케이션 개발",
    period: "2023-11월 ~ 재직중",
  ),
];

final List<Recommendation> projects = [
  Recommendation(
      name: "SuperBrain BOOM",
      source: "춤을 기반으로 뇌를 활성화 하여 치매예방 디지털치료제",
      text:
          '''자세 정확도 측정 알고리즘 개발: ML Kit Pose Detection을 적용, 신체 관절 좌표를 실시간으로 추적하고 전문 치료사의 데이터와 코사인 유사도를 비교하여 95% 수준의 정확도를 가진 자세 채점 알고리즘 개발
          - 앱 성능 최적화: FFmpeg를 통해 1GB 이상의 치료 영상을 평균 90% 압축하고, 프레임 단위로 분할하여 전문 치료사의 포즈 데아터를 추출
          - 안정적인 콘텐츠 다운로드 구현: 대용량(1GB 이상)의 영상 및 포즈 데이터를 백그라운드에서 안정적으로 다운로드하고, Dio Interceptor를 활용하여 진행률을 UI에 실시간으로 표시하는 기능 개발''',
      period: "2024-11- ~ 진행 중"),
  Recommendation(
      name: "BACT",
      source: "행동활성화 치료를 기반으로 한 디지털 치료제(DTx)",
      text: '''치료 콘텐츠 제공을 위한 인앱 비디오 플레이어 기능 개발 및 안정화
- customPainter을 사용해만든 다이얼로그 감정 기록 위젯을 사용하여 손쉽게 행동을 기록하고, 일별/주별 활동 빈도를 시각적으로 확인할 수 있는 인터랙티브 캘린더 UI/UX 개발
- 사용자의 우울 점수 및 긍정행동 점수 변화를 그래프로 시각화하여 치료 경과 추적 및 동기 부여 강화
- 치료 결과 리포트 PDF 생성 및 다운로드 기능 개발''',
      period: "2024-02 ~2024-08"),
  Recommendation(
      name: "DsCogTest",
      source: "원격화상 진단프로그램",
      text:
          '''WebRTC 기반으로 firestore에 DB를 구성, 다양한 네트워크 환경에서도 안정적인 P2P 연결을 보장하고 패킷 손실 감지 및 재연결 로직을 구현하여 통신 단절률 5% 미만 달성
- 원활한 검사 진행을 위한 화면 공유 기능 개발 및 최적화''',
      period: "2023-11 ~2024-02"),
  Recommendation(
      name: "LG Chiller",
      source: "터보 냉동기 관리  시스템",
      text:
          '''MQTT 프로토콜로 수신되는 터보 냉동기의 실시간 상태(온도, 압력 등) 데이터를 파싱하고, 운전 모드(냉방, 난방)에 따라 동적으로 변화하는 UI 컴포넌트 개발
- 설치된 모듈 및 현재 상태에 따른 실시간 동작 시각화 기능 구현''',
      period: "2023-04-04 ~2023-06-15 (총 72일)"),
  Recommendation(
      name: "LG DOAS",
      source: "공간 맞춤형 공조 솔루션",
      text: '''RESTful API 연동으로 층별/구역별 공조기 상태를 실시간으로 모니터링하고, 센서의 데이터를 시각화 및 조작하는 대시보드 개발
- 공조기 상태 및 모드에 따른 동적 UI 변경 및 기능 제어 로직 개발
- 사용자 편의를 위한 스케줄 예약 기능 구현''',
      period: "2022-09-26 ~2023-03-10 (총 165일)"),
  Recommendation(
      name: "LG wallypto App",
      source: "암호화폐, NFT 등 가상자산을 관리하는 안전한 탈중앙화 지갑으로 블록체인 분산 애플리케이션",
      text: '''키로깅 및 화면 캡처 공격을 방지하기 위해 앱 내에서 직접 렌더링하고 키 배열을 무작위로 배치하는 커스텀 보안 키패드 개발
- 암호 입력 오류 횟수에 따른 단계별 입력 대기 시간 증가 로직 구현으로 계정 보호 기능 향상
- QR코드 스캔을 통한 외부 서비스 연동 기능 개발
- AppLifecycleState를 감지하여 앱이 백그라운드로 전환되거나 1분 이상 미사용 시 자동으로 생체 인증 또는 PIN 입력을 요구하는 잠금 기능 구현''',
      period: "2022-02-21 ~ 2022-09-15(총 206일)"),
];
