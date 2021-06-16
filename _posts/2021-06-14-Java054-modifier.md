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

