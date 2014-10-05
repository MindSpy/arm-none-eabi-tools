
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __java_util_concurrent_atomic_AtomicInteger__
#define __java_util_concurrent_atomic_AtomicInteger__

#pragma interface

#include <java/lang/Number.h>
extern "Java"
{
  namespace sun
  {
    namespace misc
    {
        class Unsafe;
    }
  }
}

class java::util::concurrent::atomic::AtomicInteger : public ::java::lang::Number
{

public:
  AtomicInteger(jint);
  AtomicInteger();
  virtual jint get();
  virtual void set(jint);
  virtual void lazySet(jint);
  virtual jint getAndSet(jint);
  virtual jboolean compareAndSet(jint, jint);
  virtual jboolean weakCompareAndSet(jint, jint);
  virtual jint getAndIncrement();
  virtual jint getAndDecrement();
  virtual jint getAndAdd(jint);
  virtual jint incrementAndGet();
  virtual jint decrementAndGet();
  virtual jint addAndGet(jint);
  virtual ::java::lang::String * toString();
  virtual jint intValue();
  virtual jlong longValue();
  virtual jfloat floatValue();
  virtual jdouble doubleValue();
private:
  static const jlong serialVersionUID = 6214790243416807050LL;
  static ::sun::misc::Unsafe * unsafe;
  static jlong valueOffset;
  jint volatile __attribute__((aligned(__alignof__( ::java::lang::Number)))) value;
public:
  static ::java::lang::Class class$;
};

#endif // __java_util_concurrent_atomic_AtomicInteger__
