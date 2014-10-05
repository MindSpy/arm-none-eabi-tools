
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __gnu_java_awt_font_FontDelegate__
#define __gnu_java_awt_font_FontDelegate__

#pragma interface

#include <java/lang/Object.h>
extern "Java"
{
  namespace gnu
  {
    namespace java
    {
      namespace awt
      {
        namespace font
        {
            class FontDelegate;
        }
      }
    }
  }
  namespace java
  {
    namespace awt
    {
        class Font;
      namespace font
      {
          class FontRenderContext;
          class GlyphVector;
      }
      namespace geom
      {
          class AffineTransform;
          class GeneralPath;
          class Point2D;
      }
    }
    namespace text
    {
        class CharacterIterator;
    }
  }
}

class gnu::java::awt::font::FontDelegate : public ::java::lang::Object
{

public:
  virtual ::java::lang::String * getFullName(::java::util::Locale *) = 0;
  virtual ::java::lang::String * getFamilyName(::java::util::Locale *) = 0;
  virtual ::java::lang::String * getSubFamilyName(::java::util::Locale *) = 0;
  virtual ::java::lang::String * getPostScriptName() = 0;
  virtual jint getNumGlyphs() = 0;
  virtual jint getGlyphIndex(jint) = 0;
  virtual jint getMissingGlyphCode() = 0;
  virtual ::java::awt::font::GlyphVector * createGlyphVector(::java::awt::Font *, ::java::awt::font::FontRenderContext *, ::java::text::CharacterIterator *) = 0;
  virtual void getAdvance(jint, jfloat, ::java::awt::geom::AffineTransform *, jboolean, jboolean, jboolean, ::java::awt::geom::Point2D *) = 0;
  virtual ::java::awt::geom::GeneralPath * getGlyphOutline(jint, jfloat, ::java::awt::geom::AffineTransform *, jboolean, jboolean, jint) = 0;
  virtual ::java::lang::String * getGlyphName(jint) = 0;
  virtual jfloat getAscent(jfloat, ::java::awt::geom::AffineTransform *, jboolean, jboolean, jboolean) = 0;
  virtual jfloat getDescent(jfloat, ::java::awt::geom::AffineTransform *, jboolean, jboolean, jboolean) = 0;
  static const jint FLAG_FITTED = 1;
  static const jint FLAG_NO_HINT_HORIZONTAL = 2;
  static const jint FLAG_NO_HINT_VERTICAL = 4;
  static const jint FLAG_NO_HINT_EDGE_POINTS = 8;
  static const jint FLAG_NO_HINT_STRONG_POINTS = 16;
  static const jint FLAG_NO_HINT_WEAK_POINTS = 32;
  static ::java::lang::Class class$;
} __attribute__ ((java_interface));

#endif // __gnu_java_awt_font_FontDelegate__
