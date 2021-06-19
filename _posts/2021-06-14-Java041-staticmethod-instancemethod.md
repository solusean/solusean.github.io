---
layout: page
title:  "[Java] 클래식 메서드(static method)와 인스턴스 메서드"
description: " [Java] Ch-01 "
headline: 
tags: [Java]
comments: true
published: true
categories: Java
---
posted [2021-06-14] 

# [Java] 클래식 메서드 (static method)와 인스턴스 메서드
5월 21일 강의

Static 메서드 안에서 정적 멤버만 사용 가능. (인스턴스 멤버는 사용 불가능. )


메모리가 생성이 안되어있는데, 그 코드를 쓴다는 것이 말이 안되는 것.  왜? 찾아갈 수 없으니까. 
즉 아기가 출생 했을때, 호적신고를 안한 상태에서 그 아이가 법적으로 할 수 있는 것이 아무것도 없다는 것 
집이 있어야 집주소가 있어야 찾아갈 수 있음. 
1731 수업을 다시 잘 들어보기. 

chap 06 ex 03
```Java
Public class Person {
  String nation = "Korea; // -> final String nation = "Korea";
  String ssn;
  String name;
  
  public person (String ssn, String name) {
      this.ssn = ssn;
      this.name = name;
      }
      
}
```

```Java
public class PersonEx {
    public static void main (String[] args) {
        person ps = new Person ("12345-123232", "홍길동");
        System.out.println(ps.nation);
        System.out.println(ps.ssn);
        System.out.println(ps.name);
        
        // nation을 변경 안되는 성격으로 만들고 싶음. 
        
        ps.nation = "Japan";
        System.out.println(ps.nation);
        }
}
```
즉 이런 순간에 위에다가 nation에 final을 붙이는 것이다. 이것이 final 키워드이다.그럼 Japan을 입력을 했지만, 위의 Person 클래스에서 final을 적용하면 변경이 되지 않는다. 



상수 (static final) 
변하지 않는 진리의 값.

```java
public class Earth {
    // 상수 : 진리의 값, 불변의 값, 고유한 값 등에 이름을 부여하며, 사용하고자 하는 의미
    double earth_radius = 6400;
    
    Earth() {
        earth_radius = 5000;
        }
     이렇게 하면 밑의 5천으로 바뀜
     고로 이것을
     
     final double earth_raduis = 6400; 
     // final을 넣으면, 아래 5천이 error라고 나온다. final은 최종값을 이야기 하는것이기 때문. 
     // 이것은 변수, 인스턴스 이므로, 메모리가 자동적으로 쓸 수 있게 만든다. 앞에 static을 붙여서
     // static이 없으면 인스턴스 멤버이므로, 객체를 생성해서 해당하는 메모리가 객체를 생성할때 메모리가 생성이된다. 
     // static을 붙이면, 클래스가 선언될때 (?) 자동으로 메모리가 생성이 된다. -> 클래스가 선언될 때 인지 확인해보기. 강의에선 안나옴, 나의 기억일뿐.
     static final double // 값도 변경 불가 (fianl) 메모리 자동생성 (static) 으로 한다. 
     static final을 쓸때 보통은 "대문자"로 다 적는 것을 의미한다. 즉 영문에서 절대적인 명제에 대해서 대문자를 쓰는 것, e.g. Sun, Earth, Sunday, 이런 느낌
```
    
이전의 math라는 것에서 얘를 들어보자면
원주율 (pi)를 떠올려 보자. 
Math.PI 라는 이런 수학적인 것들은 불변의 값들이 결정이 나있기 때문에 컴퓨터에서 결정이 되어 있다. 그러나, 컴퓨터에서 사전에 정의되지 않은, "프로그래머가 원하는 절대적인 임의의 상수"를 하나 만들어주고 싶다면, 위의 static final을 사용하는 것이다. 
