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


class constexpr_str
{
 public:
  constexpr constexpr_str()
      : data_(nullptr),
        length_(0)
  {
    
  }

  constexpr void setData(const char* data) { data_ = data; }
  
 private:
  const char* data_;
  int length_;
};



int main()
{

  constexpr_str str;
  str.setData("sdlfkj");
  // int v = Test<count("asdf")>::value;
  // constexpr int v = count("asdf");
  // printf("%d", v);

  //std::cout << Test<count("asdf")>::value << std::endl;
  constexpr speedup::XMLParser parser;
  //constexpr auto eventlist = parser.parse("<xml></xml>");
  constexpr auto eventlist = speedup::parseXML("<xml></xml>");

  for(auto i=0 ; i <eventlist.size_ ; ++i ) {
    auto&& event = eventlist.list_[i];
    char str[255];
    strncpy(str, event.name_, event.name_len_);

    std::cout << str << std::endl;
  }

  // test
  return 0;
}
                       
