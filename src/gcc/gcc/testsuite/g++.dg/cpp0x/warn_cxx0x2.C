// PR c++/50810
// { dg-options "-std=gnu++98 -Wc++11-compat" }

signed char data[] = { 0xff }; // { dg-warning "narrowing" }
