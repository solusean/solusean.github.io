---
layout: page
title:  "[Java] Getter and Setter "
description: " [Java] Ch-01 "
headline: 
tags: [Java]
comments: true
published: true
categories: Java
---
posted [2021-06-14] 

# Getter and Setter
게터와 세터 메소드 0424 1230 수업. 페이지 301

일반적으로 객체지향 프로그래밍에서는 객체의 필드를 객체 외부에서 직접적으로 접근하는 것을 막는다. 
그 이유는 외부에서 마음대로 변경할 경우 객체의 무결성(결점이 없는 성질)이 깨질 수 있기 때문이다. 
예를 들어 자동차의 속력은 음수가 될 수 없는데, 외부에서 음수로 변경하면 객체의 무결성이 깨지기 때문이다. 

아래 예제에서 보면 300 이라는 값이, 유효한지 확인을 하기 위해 //
개발할때 직접 사용하지 않고, 중간과정 메소드를 만들어서 이 변수(speed) 에 값을 집어 넣을 수 있도록 처리를 하는 것이다. 
우선 public을 private으로 바꾸고. (그럼 아래 car.speed가 에러가 나옴)
중간 과정의 메소드를 만든다 -> getter setter 메소드 생성. 
public void setSpeed(int speed) {} 를 생성을 하면,
외부에서는 setSpeed메소드를 사용하게 하고, setSpeed 메소드 자체 내에서는, private int speed에 대한 조건 처리 코드를 집어 넣어 주는 것이다. 
즉 중개인의 역할을 해주는 것이다. 


Getter, setter 메서드를 중간에 삽입해서, private 변수를 대신 하는 것이다. 

```Java
public class Car {
      
      //필드
      // public int speed;
      // public boolean stop;
      
      private int speed;
      private boolean stop;
      
      public void setSpeed(int speed) {
      
      }



}


public class CarEx {

    public static void main (String[] args) {
        Car car = new Car();
        car.speed = 300; // 이 값에 대한 유효성 검사를 해주어야 함. 
    
    }

}
```

이것을 바꾸면
```Java
public class Car {
      
     
      private int speed;
      private boolean stop;
      
      // 여기부터
      public void setSpeed(int speed) {
          if (speed < 0) {
              this.speed = 0;
              return;
          } else {
              this.speed = speed;
          }
      }
      // 여기까지 setter method
      
      //여기부터
      public int getSpeed () {
          return speed;
      }
      // 여기까지 getter



}


public class CarEx {

    public static void main (String[] args) {
        Car car = new Car();
        car.setSpeed(-50); // -50이면 this.speed =0; 이 되어서 return;으로 가서 프로그램 종료
        car.setSpeed(50); // 50이면, this.speed = speed;가 되어서 실행. 
        
        System.out.println("현재속도 :" +car.getSpeed());
               
    
    }

}
```

이것을 현실에 비유해서 생각을 해보자.
현실에서 사건에 쳐했다. 
변호사를 이용하면 일이 쉽다. 그러나 피고인이나 당사자를 만나서 처리하면 피곤해진다.
그러므로 사건 당사자를 private으로 만들어 버리고, 변호인을 public으로 만드는 것이다. 
위의 이 예시를 조금 더 깔끔하게 바꾸어 보기. 
