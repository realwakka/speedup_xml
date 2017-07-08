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

class Event
{
 public:
  constexpr Event() : Event(EventType::kStartElement, nullptr, 0){}
  constexpr Event(EventType type, const char* name, int name_len) : type_(type) , name_(name), name_len_(name_len){}

  // const char* getName() const { return name_; }
  // int getNameSize() const { return name_size_; }

 public:
  EventType type_;
  const char* name_;
  int name_len_;
};

class EventList
{
 public:
  constexpr EventList() : size_(0){}
  constexpr void pushEvent(const Event& event);
  constexpr void pushEvent(EventType type, const char* name, int name_len);
 public:
  Event list_[255];
  int size_;
};

constexpr void EventList::pushEvent(EventType type, const char* name, int name_len)
{
  if( size_ < 255 ) {
    list_[size_].type_ = type;
    list_[size_].name_ = name;
    list_[size_].name_len_ = name_len;
    ++size_;
  }
}

constexpr void EventList::pushEvent(const Event& event)
{
  if( size_ < 255 ) {
    list_[size_] = event;
    ++size_;
  }
}


// typedef void (*CharFunc)(char, CharFunc&, const char*&, int&);

// constexpr void CharOnMarkup(char ch, CharFunc& char_func, const char*& stream, int& stream_len);

// constexpr void CharOnIdle(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '<': char_func = &CharOnMarkup;
//       break;
//     case '/':
//       break;
//     case '>':
//       break;
//     case ' ':
//     case '\n':
//     case '\t':
//       break;
      
//     default:
//       ++stream_len_;
//       break;
      
//   }
// }

// constexpr void CharOnMarkup(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '/':
//       char_func = &CharOnEndMarkup;
//       break;
      
//     case ' ':
//     case '\n':
//     case '\t':
//       break;
      
//     default:
//       CharOnStartMarkup(ch);
//       char_func = &CharOnStartMarkup;
//       break;
//   }
// }

// constexpr void CharOnStartMarkup(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '/':
//       //empty
      
//       break;
//     case '>':
//       char_func = &CharOnContent;
//       //CallStartElement();
//       break;
//     case '"':
//       char_func = &CharOnAttribute;
//       break;
//     default:
//       ++stream_len_;
//       //stringstream_ << ch;
//       break;
//   }
// }

// constexpr void CharOnEmptyMarkup(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   char_func = &CharOnContent;
  
// }

// constexpr void CharOnEndMarkup(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '>':
//       char_func = &CharOnContent;
//       //CallEndElement();
//       break;
//     case ' ':
//     case '\n':
//     case '\t':
//       break;
      
//     default:
//       ++stream_len_;
//       //stringstream_ << ch;
//       break;
//   }
// }

// constexpr void CharOnContent(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '<':
//       char_func = &CharOnMarkup;
//       OnMarkup();
//       break;
//     case ' ':
//     case '\n':
//     case '\t':
//       break;
      
//     default:
//       ++stream_len_;
//       //stringstream_ << ch;
//       break;
//   }
// }

// constexpr void CharOnAttribute(char ch, CharFunc& char_func, const char*& stream, int& stream_len)
// {
//   switch(ch) {
//     case '"':
//       char_func = &CharOnStartMarkup;
//       break;
      
//     default:
//       ++stream_len_;
//       //stringstream_ << ch;
//       break;
//   }
// }

// constexpr void OnMarkup()
// {
//   if( stream_len_ > 0 ) {
//     // TextElement;
//     list_.pushEvent(Event(EventType::kText, stream_, stream_len_));
//     stream_ += stream_len_;
//     stream_len_ = 0;
//   }
  
// }



// constexpr EventList parseXML(const char* xml)
// {
//   stream_ = xml;
//   auto index = 0;
//   CharFunc char_func = CharOnContent;
//   const char* stream = xml;
//   int stream_len = 0;
//   while( true ) {
//     auto buf = xml[index];
//     if( buf ) {
//       (this->*char_func)(buf, char_func, stream, stream_len);
//     } else {
//       break;
//     }
//   }
  
//   EventList list;
//   // Event event(EventType::kStartElement, nullptr, 0);
//   // list.pushEvent(event);
//   // list.list_[0].type_ = EventType::kStartElement;
//   // list.list_[0].name_ = "xml";
//   // list.list_[0].name_size_ = 3;
//   // ++list.size_;

  
//   return list;
// }



class XMLParser
{
 public:
  typedef void (XMLParser::*CharFunc)(char);
  constexpr XMLParser() : char_func_(&XMLParser::CharOnContent),
                          stream_(nullptr),
                          stream_len_(0)
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

 private:
  CharFunc char_func_;
  //void (XMLParser::*char_func_)(char ch);
  const char* stream_;
  int stream_len_;
  EventList list_;
};

constexpr EventList parseXML(const char* xml)
{
  XMLParser parser;
  return parser.parse(xml);
}

constexpr EventList XMLParser::parse(const char* xml)
{
  stream_ = xml;
  auto index = 0;

  while( true ) {
    auto buf = xml[index];
    if( buf ) {
      (this->*char_func_)(buf);
    } else {
      break;
    }
    index++;
  }

  return list_;
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
      char_func_ = &XMLParser::CharOnEndMarkup;
      break;
      
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      CharOnStartMarkup(ch);
      char_func_ = &XMLParser::CharOnStartMarkup;
      break;
  }
}

constexpr void XMLParser::CharOnStartMarkup(char ch)
{
  switch(ch) {
    case '/':
      //empty
      
      break;
    case '>':
      char_func_ = &XMLParser::CharOnContent;
      //CallStartElement();
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
    case '>':
      char_func_ = &XMLParser::CharOnContent;
      //CallEndElement();
      break;
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      ++stream_len_;
      //stringstream_ << ch;
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
      ++stream_len_;
      //stringstream_ << ch;
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
    list_.pushEvent(Event(EventType::kText, stream_, stream_len_));
    stream_ += stream_len_;
    stream_len_ = 0;
  }
  
}



}  // speedup

#endif /* XML_PARSER_H_ */

