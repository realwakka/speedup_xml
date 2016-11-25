#include "xml_reader.h"

#include <fstream>
#include <iostream>

namespace speedup {


XMLReader::XMLReader()
    : char_func_(&XMLReader::CharOnContent)
{}

XMLReader::~XMLReader()
{}

void XMLReader::parse(std::string filename)
{
  std::ifstream file(filename);
  if (file.is_open())
  {
    char buf;
    while ( file.get(buf) )
      char_func_(this, buf);

    file.close();
  }
}

void XMLReader::CharOnIdle(char ch)
{
  switch(ch) {
    case '<':
      char_func_ = &XMLReader::CharOnMarkup;
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
      stringstream_ << ch;
      break;
      
  }
}

void XMLReader::CharOnMarkup(char ch)
{
  switch(ch) {
    case '/':
      char_func_ = &XMLReader::CharOnEndMarkup;
      break;
      
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      CharOnStartMarkup(ch);
      char_func_ = &XMLReader::CharOnStartMarkup;
      break;
  }
}

void XMLReader::CharOnStartMarkup(char ch)
{
  switch(ch) {
    case '/':
      //empty
      
      break;
    case '>':
      char_func_ = &XMLReader::CharOnContent;
      CallStartElement();
      break;
    case '"':
      char_func_ = &XMLReader::CharOnAttribute;
      break;
    default:
      stringstream_ << ch;
      break;
  }
}

void XMLReader::CharOnEmptyMarkup(char ch)
{
  char_func_ = &XMLReader::CharOnContent;
  
}

void XMLReader::CharOnEndMarkup(char ch)
{
  switch(ch) {
    case '>':
      char_func_ = &XMLReader::CharOnContent;
      CallEndElement();
      break;
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      stringstream_ << ch;
      break;
  }
}

void XMLReader::CharOnContent(char ch)
{
  switch(ch) {
    case '<':
      char_func_ = &XMLReader::CharOnMarkup;
      OnMarkup();
      break;
    case ' ':
    case '\n':
    case '\t':
      break;
      
    default:
      stringstream_ << ch;
      break;
  }
}

void XMLReader::CharOnAttribute(char ch)
{
  switch(ch) {
    case '"':
      char_func_ = &XMLReader::CharOnStartMarkup;
      break;
      
    default:
      stringstream_ << ch;
      break;
  }
}

void XMLReader::OnMarkup()
{
  std::string str = stringstream_.str();
  stringstream_.str(std::string());
  if( str.length() > 0 )
    handler_->TextElement(str);
}


void XMLReader::CallStartElement()
{
  std::string str = stringstream_.str();
  stringstream_.str(std::string());

  std::istringstream iss(str);
  std::string token;
  getline(iss, token, ' ');
  std::string qname = token;
  Attributes attrs;

  while(getline(iss, token, ' ')) {
    auto pos = token.find("=");
    if( pos != std::string::npos ) {
      auto key = token.substr(0, pos);
      auto value = token.substr(pos + 1, token.length() - pos - 1);
      attrs.emplace(key, value);
    }
  }
  
  if( str.length() > 0 )
    handler_->StartElement(qname, attrs);
}

void XMLReader::CallEndElement()
{
  std::string str = stringstream_.str();
  stringstream_.str(std::string());
  if( str.length() > 0 )
    handler_->EndElement(str);
}


}  // speedup
