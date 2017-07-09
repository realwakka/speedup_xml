#ifndef XML_PARSER_H_
#define XML_PARSER_H_

#include <functional>

namespace speedup {

enum class EventType
{
    kStartElement,
    kEndElement,
    kText
};

// class conststr {
//  public:
//   template<std::size_t N>
//   constexpr conststr(const char(&a)[N]): p_(a), sz_(N - 1) {}

//   // constexpr functions signal errors by throwing exceptions
//   // in C++11, they must do so from the conditional operator ?:
//   constexpr char operator[](std::size_t n) const
//   {
//     return n < sz? p[n] : throw std::out_of_range("");
//   }
//   constexpr std::size_t size() const { return sz; }
//  private:
//   const char* p_;
//   std::size_t sz_;

// };

// class XMLAttribute
// {
//  private:
//   conststr key_;
//   conststr value_;
// };

// template<std::size_t Size>
// class XMLAttributeList
// {
//  public:
//   constexpr XMLAttributeList() {}
//  private:
//   XMLAttribute attributes_[Size];
// };

class XMLElement
{
 public:
  constexpr XMLElement() : name_(nullptr), name_len_(0) {}
  constexpr XMLElement& operator=(const XMLElement& rhs) { name_ = rhs.name_; name_len_ = rhs.name_len_; }
  constexpr void CopyFrom(const XMLElement& rhs) { name_ = rhs.name_; name_len_ = rhs.name_len_; }

  const char* name_;
  int name_len_;
  //XMLAttributeList<AttrSize> attr_list_;
};

class Event
{
 public:
  constexpr Event() : Event(EventType::kStartElement){}
  constexpr Event(EventType type) : type_(type){}
  constexpr void CopyFrom(const Event& event) { type_ = event.type_; element_.CopyFrom(event.element_); }


 public:
  EventType type_;
  XMLElement element_;
};

class EventList
{
 public:
  constexpr EventList() : size_(0){}
  constexpr void PushEvent(const Event& event);
  //constexpr void pushEvent(EventType type, const char* name, int name_len);

  constexpr int GetSize() const { return size_; }
 public:
  Event list_[255];
  int size_;
};

template<std::size_t Size>
class FixedEventList
{
 public:
  constexpr FixedEventList(){}
  constexpr void CopyFrom(const EventList& event_list);

  std::size_t GetSize() const { return Size; }
  //constexpr void pushEvent(EventType type, const char* name, int name_len);
 public:
  Event list_[Size];
};

template<std::size_t Size>
constexpr void FixedEventList<Size>::CopyFrom(const EventList& event_list)
{
  for( auto i =0 ; i<Size ; ++i ) {
    list_[i].CopyFrom(event_list.list_[i]);
  }
}


constexpr void EventList::PushEvent(const Event& event)
{
  if( size_ < 255 ) {
    list_[size_].CopyFrom(event);
    ++size_;
  }
}


constexpr XMLElement ParseElement(const char* str, int strlen)
{
  XMLElement element;
  // const char* qname = str;
  // int qname_len = 0;
  // for(auto i = 0 ; i < strlen ; ++i ) {
  //   if( qname[i] == ' ' ) {
  //     qname_len = i;
  //     break;
  //   }
  // }

  // element.name_ = qname;
  // element.name_len_ = qname_len;
  element.name_ = str;
  element.name_len_ = strlen;

  return element;
}

class XMLParser
{
 public:
  typedef void (XMLParser::*CharFunc)(char);
  constexpr XMLParser() : char_func_(&XMLParser::CharOnContent),
                          stream_(nullptr),
                          stream_len_(0),
                          progress_(nullptr)
  {}
  constexpr EventList parse(const char* xml);

 private:
  constexpr void CharOnIdle(char ch);
  constexpr void CharOnMarkup(char ch);
  constexpr void CharOnContent(char ch);
  
  constexpr void CharOnStartMarkup(char ch);
  constexpr void CharOnEndMarkup(char ch);
  constexpr void CharOnEmptyMarkup(char ch);
  
  constexpr void CharOnAttribute(char ch);
  constexpr void OnMarkup();

  constexpr void CallStartElement();
  constexpr void CallEndElement();

  //constexpr void PushToStream();
  constexpr void ClearStream();

 private:
  CharFunc char_func_;
  //void (XMLParser::*char_func_)(char ch);
  const char* progress_;
  const char* stream_;
  int stream_len_;
  EventList list_;
};

// constexpr void XMLParser::PushToStream()
// {
//   if( stream_ == nullptr ) {
//     stream_ = progress_;
//     stream_len_ = 1;
//   }
//   else {
//     ++stream_len_;
//   }
// }

constexpr void XMLParser::ClearStream()
{
  stream_ = nullptr;
  stream_len_ = 0;
}

constexpr EventList XMLParser::parse(const char* xml)
{
  auto index = 0;
  progress_ = xml;
  
  while( true ) {
    auto buf = progress_[0];
    if( buf ) {
      (this->*char_func_)(buf);
    } else {
      break;
    }
    ++progress_;
  }

  return list_;
}


// constexpr auto CreateFixedEventList()
// {
//   FixedEventList<GetEventListSize(> fixedlist;
// }
template<const char* XML>
constexpr auto parseXML()
{
  XMLParser parser;
  return  parser.parse(XML);
}


template<const char* XML>
constexpr auto GetEventListSize()
{
  constexpr auto list = parseXML<XML>();
  FixedEventList<list.GetSize()> fixed;
  fixed.CopyFrom(list);
  return fixed;
}

// constexpr auto parseXML(const char* xml)
// {
//   XMLParser parser;
//   auto list =  parser.parse(xml);

//   return list;
// }



// //template<std::size_t Size>
// constexpr auto parseFixedXML(const char* xml) -> FixedEventList<eventSize(xml)>
// {
  
// }

// template<const char* XML>
// constexpr EventList parseX()
// {
//   XMLParser parser;
//   return parser.parse(XML);
// }

// template<const char* XML>
// struct Test
// {
//   using result = parseXML(XML);
// };


constexpr void XMLParser::CallStartElement()
{
  auto element = ParseElement(stream_, stream_len_);

  Event event;
  event.element_.CopyFrom(element);
  list_.PushEvent(event);

  ClearStream();
  // stream_ = nullptr;
  // stream_len_ = 0;
}

constexpr void XMLParser::CallEndElement()
{
  auto element = ParseElement(stream_, stream_len_);

  Event event(EventType::kEndElement);
  event.element_.CopyFrom(element);
  list_.PushEvent(event);

  ClearStream();
}



constexpr void XMLParser::CharOnIdle(char ch)
{
  switch(ch) {
    case '<':
      char_func_ = &XMLParser::CharOnMarkup;
      break;
    case '/':
      break;
    case '>':
      break;
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      ++stream_len_;
      break;
      
  }
}

constexpr void XMLParser::CharOnMarkup(char ch)
{
  switch(ch) {
    case '/':
      stream_ = progress_ + 1;
      char_func_ = &XMLParser::CharOnEndMarkup;
      break;
      
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      stream_ = progress_;
      CharOnStartMarkup(ch);
      char_func_ = &XMLParser::CharOnStartMarkup;
      break;
  }
}

constexpr void XMLParser::CharOnStartMarkup(char ch)
{
  switch(ch) {
    case '/':
      //empty?
      
      break;
    case '>':
      char_func_ = &XMLParser::CharOnContent;
      CallStartElement();
      break;
    case '"':
      char_func_ = &XMLParser::CharOnAttribute;
      break;
    default:
      ++stream_len_;
      //stringstream_ << ch;
      break;
  }
}

constexpr void XMLParser::CharOnEmptyMarkup(char ch)
{
  char_func_ = &XMLParser::CharOnContent;
  
}

constexpr void XMLParser::CharOnEndMarkup(char ch)
{
  switch(ch) {
    case '>': {
      char_func_ = &XMLParser::CharOnContent;
      // auto element = ParseElement(stream_, stream_len_);

      // Event event(EventType::kEndElement);
      // event.element_.CopyFrom(element);
      // list_.PushEvent(event);

      // ClearStream();

      CallEndElement();
      break;
    }
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      //++stream_len_;
      //PushToStream();
      ++stream_len_;
      // if( stream_ == nullptr ) {
      //   stream_ = progress_;
      //   stream_len_ = 1;
      // }
      // else {
      //   ++stream_len_;
      // }

      break;
  }
}

constexpr void XMLParser::CharOnContent(char ch)
{
  switch(ch) {
    case '<':
      char_func_ = &XMLParser::CharOnMarkup;
      OnMarkup();
      break;
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      //PushToStream();
      break;
  }
}

constexpr void XMLParser::CharOnAttribute(char ch)
{
  switch(ch) {
    case '"':
      char_func_ = &XMLParser::CharOnStartMarkup;
      break;
      
    default:
      ++stream_len_;
      //stringstream_ << ch;
      break;
  }
}

constexpr void XMLParser::OnMarkup()
{
  if( stream_len_ > 0 ) {
    // TextElement;
    //list_.pushEvent(EventType::kText, stream_, stream_len_);
    list_.PushEvent(Event(EventType::kText));
    ClearStream();
    // stream_ += stream_len_;
    // stream_len_ = 0;
  }
  
}



}  // speedup

#endif /* XML_PARSER_H_ */

