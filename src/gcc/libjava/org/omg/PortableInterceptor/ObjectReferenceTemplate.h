
// DO NOT EDIT THIS FILE - it is machine generated -*- c++ -*-

#ifndef __org_omg_PortableInterceptor_ObjectReferenceTemplate__
#define __org_omg_PortableInterceptor_ObjectReferenceTemplate__

#pragma interface

#include <java/lang/Object.h>
#include <gcj/array.h>

extern "Java"
{
  namespace org
  {
    namespace omg
    {
      namespace CORBA
      {
          class Object;
      }
      namespace PortableInterceptor
      {
          class ObjectReferenceTemplate;
      }
    }
  }
}

class org::omg::PortableInterceptor::ObjectReferenceTemplate : public ::java::lang::Object
{

public:
  virtual JArray< ::java::lang::String * > * adapter_name() = 0;
  virtual ::java::lang::String * orb_id() = 0;
  virtual ::java::lang::String * server_id() = 0;
  virtual ::org::omg::CORBA::Object * make_object(::java::lang::String *, JArray< jbyte > *) = 0;
  virtual JArray< ::java::lang::String * > * _truncatable_ids() = 0;
  static ::java::lang::Class class$;
} __attribute__ ((java_interface));

#endif // __org_omg_PortableInterceptor_ObjectReferenceTemplate__
