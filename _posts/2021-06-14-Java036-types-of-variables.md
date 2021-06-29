---
layout: page
title:  "[Java] 변수의 종류 (클래스 변수, 인스턴스 변수, 지역변수)"
description: " [Java] Ch-01 "
headline: 
tags: [Java]
comments: true
published: true
categories: Java
---
posted [2021-06-14] 

# [Java] 변수의 종류 (클래스 변수, 인스턴스 변수, 지역변수)
클래스 변수 cv
인스턴스 변수 iv  (static 변수, 공유 변수)

객체를 생성 했을때, iv (인스턴스 베리어블) 인스턴스 변수가 생기는 것. 객체를 생성 할 때, 클래스 내용 보고 클래스에 적힌 대로 만들어 지는 것. 
즉 객체는 인스턴스 변수를 묶어놓은 것으로 이루어져 있음. iv를 여러게 묶어놓으면 객체임. 

클래스 변수는, 클래스가 메모리에 올라갈 때 생성이 됨. 클래스가 메모리에 언제 올라가냐? 클래스가 필요 할 때. 클래스는 설계도임. 설계도가 언제 필요함? 객체를 만들때. 설계도가 먼저 올라가야 하는 것. 
즉 cpu가 있을때, 파일들은 디스크에 저장이 되어 있다.  time.class 라는 클래스를 cpu가 직접 못 가져오기 때문에, 중간에 램 (메모리)가 있다. 즉 파일을 메모리에 올려서 (로딩) 그다음에 cpu가 램에 있는 것을 읽을 수 잇음. 즉 cpu는 메로리랑만 작업을 함. 작업이 끝나고 하는 것을 save 하는 것. 
올리는건 로딩, 작업을 저장 하는 것을 세이브. 
cv는 객체 생성이 필요가 없음.
iv는 객체 생성이 필요 함. 
cv는 아무떄나 사용 할 수 있
인스턴스 변수는 객체 생성을 해야 쓸 수 있음. 

사용자 정의 타입 - 원하는 타입을 직접 만들 수 있다. https://www.youtube.com/watch?v=ML4CO32-bts&list=PLW2UjW795-f6xWA2_MUhEVgPauhGl3xIp&index=55 
8분 32초

Class Card {
string kind;
int number;
static int wideh -1 34234
static int height =- 124124

card c = new card ();
c. kind = adf
c. numbe r= 1234
c.width = 141234
c. height = 123123

이렇게 쓸 수 잇지만 cv는 클래스 명을 써줘야 한다. 안그러면 iv랑 햇갈리니까. 
card.width = 123213
card.height = 12j341240 
이렇게 쓰는게 맞다. 

메써드는 객체지향 개념에서 함수임. 차이가 있다면 메서드는 꼭 클래스 안에 있어야 함. 