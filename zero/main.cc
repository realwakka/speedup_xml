#include "xml_parser.h"

#include <iostream>
#include <cstring>

// template<int T>
// struct Test
// {
//   static constexpr int value = T;
// };


// constexpr int count( const char* str ){
//   auto cnt = 0;
//   while(true) {
//     if( str[cnt] == 0 )
//       return cnt;
//     cnt++;
//   }
// }

class verybig
{
 public:
  constexpr verybig() : value{0,} {}
  uint64_t value[255];
};

constexpr verybig func() {
  verybig one;
  for( int i=0 ; i<255 ; ++i ) {
    one.value[i] = 0;
  }
  return one;
}


constexpr char xml[] = "<xml></xml>";

int main()
{

  constexpr speedup::XMLParser parser;
  //constexpr auto eventlist = parser.parse("<xml></xml>");
  constexpr auto eventlist = speedup::GetEventListSize<xml>();
  //constexpr auto eventlist = speedup::parseXML<"<xml></xml">();

  std::cout << "list size : " << eventlist.GetSize() << std::endl;
  for(auto i=0 ; i <eventlist.GetSize() ; ++i ) {
    auto&& event = eventlist.list_[i];
    char str[255];
    strncpy(str, event.element_.name_, event.element_.name_len_);
    std::cout << "name len : " << event.element_.name_len_ << std::endl;
    str[event.element_.name_len_] = 0;
    std::cout << str << std::endl;
  }

  // constexpr auto one = func();

  // test
  return 0;
}
                       
