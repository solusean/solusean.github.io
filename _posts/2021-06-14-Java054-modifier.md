---
layout: page
title:  "[Java] 제어자 (modifier) "
description: " [Java] Ch-01 "
headline: 
tags: [Java]
comments: true
published: true
categories: Java
---
posted [2021-06-14] 

# [Java] 제어자 (modifier) 
> 출처 [자바의 정석 3판] 

## 1. 클래스와 클래스의 멤버 (멤버 변수, 메서드)에 부가적인 의미 부여
접근 제어자 = public, protected, (default), private 중 1개만 붙일 수 있음
그 외 = static, final, abstract, native, transient, synchrnonized, volatile, strictfp

- 하나의 대상에 여러 제어자를 같이 사용가능 (접근 제어자는 하나만) 

```java
1   public class ModifierTest {
2       public static final int WIDTH = 200;
3    
4       public static void main(String[] args) {
5         System.out.println("WIDTH=" + WIDTH);
6       }
```
위에서 public, static, final 은 모두 '제어자' 이다. 



## 2. Static
**멤버변수 
* 모든 인스턴스에 공통적으로 사용되는 클래스 변수가 된다.
* 클래스 변수는 인스턴스를 생성하지 않고도 사용 가능하다.
* 클래스가 메모리에 로드될 때 생성된다.
 
**메서드
* 인스턴스를 생성하지 않고도 호출이 가능한 Static  메서드가 된다.
* Static메서드 내에서는 인스턴스 멤버들을 직접 사용할 수 없다.




## 3. final - 마지막의, 변경될 수 없는 




## 4. abstract - 추상의, 미완성의 




접근 제한자 (access modifier) 5월 24일 1130 수업

접근자를 사용하는 대상? 클래스, 인터페이스, 맴버필드, 멤버 메서드 등
public, protected, private, default

클래스명 앞에는 접근자가 먼저 와야함
e.g. public class 클래스명()
그러나 이를 생략하면
class 클래스명 () : 접근자를 생략하면 default이다.
default라는 것은 따로 적어주지 않는다. 


protected : 같은 패키지 또는 자식 클래스에서 사용할 수 있다. 
private : 외부에서 사용될 수 없다. // 즉 파일, 원래 선언된 파일 안에서만 쓸 수 있다. 
public : 외부 클래스가 자유롭게 상요 가능하다
default : 같은 패키지에 소속된 클래스에서 사용 가능 하다
```Java
public class A {
    public A(boolean b) {}
    A(int b){} // 이 클래스A안에서만 사용할 수 있음. Class B에 가서 사용 못함
    private A(String s){}
    
    A a1 = new A (true);
    A a2 = new A (1);
    A a3 = new A ("문자열");
}

public class B {
    A a1 = new A (true);
    A a2 = new A (1);
    //접근자가 private이므로, 다른 클래스에서는 접근이 불가능
    // A a3 = new A("문자열") 
}
```

클래스는 객체를 생성하기 위한 목적으로, 객체를 분석해서 만든 설계도이다. 

Class A{}
A obj = new A(); //객체 생성 구문
A() : 생성자 메서드에 접근 제한 

```Java 
public class A {
    //필드
    public int field1;
    int field2; // dafault
    private int field3;
    
    //생성자
    public A() {
        field1 = 1;
        field 2 = 1;
        field 3 = 1;
        
        method1();
        method2();
        method3();
    }
    
    //메서드
    public void method1() {}
    void method2() {} // default
    private void method3() {}
}

// 이렇게 있고

public class B {
    public B() {
        A a = new A(); // new 연산자가 A클래스에 멤버를 내용으로 하여, 힙메모리에 메모리를 생성 한다. 
        
        a.field1 = 1;
        a.field2 = 1;
        a.field3 = 1; // 이것은 인식이 안됨. 접근자가 private 이기 때문. 
        
        a.method1();
        a.method2()
        
        a.method3(); // 접근이 불가능 하다, private 이므로
    }
}
