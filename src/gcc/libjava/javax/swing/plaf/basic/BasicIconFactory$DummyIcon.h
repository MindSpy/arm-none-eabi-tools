
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __javax_swing_plaf_basic_BasicIconFactory$DummyIcon__
#define __javax_swing_plaf_basic_BasicIconFactory$DummyIcon__

#pragma interface

#include <java/lang/Object.h>
extern "Java"
{
  namespace java
  {
    namespace awt
    {
        class Component;
        class Graphics;
    }
  }
  namespace javax
  {
    namespace swing
    {
      namespace plaf
      {
        namespace basic
        {
            class BasicIconFactory$DummyIcon;
        }
      }
    }
  }
}

class javax::swing::plaf::basic::BasicIconFactory$DummyIcon : public ::java::lang::Object
{

  BasicIconFactory$DummyIcon();
public:
  virtual jint getIconHeight();
  virtual jint getIconWidth();
  virtual void paintIcon(::java::awt::Component *, ::java::awt::Graphics *, jint, jint);
public: // actually package-private
  BasicIconFactory$DummyIcon(::javax::swing::plaf::basic::BasicIconFactory$DummyIcon *);
public:
  static ::java::lang::Class class$;
};

#endif // __javax_swing_plaf_basic_BasicIconFactory$DummyIcon__
