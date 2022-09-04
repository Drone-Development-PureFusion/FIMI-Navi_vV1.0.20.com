package com.fimi.kernel.store.sqlite.entity;
/* loaded from: classes.dex */
public class Student {
    public String age;

    /* renamed from: id */
    public Long f202id;
    public String name;
    public String number;

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getAge() {
        return this.age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getId() {
        return this.f202id;
    }

    public void setId(Long id) {
        this.f202id = id;
    }

    public Student(Long id, String name, String age, String number) {
        this.f202id = id;
        this.name = name;
        this.age = age;
        this.number = number;
    }

    public Student() {
    }
}
