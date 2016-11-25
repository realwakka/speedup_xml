#ifndef SPEEDUP_XML_READER_H_
#define SPEEDUP_XML_READER_H_

#include <string>
#include <map>
#include <sstream>
#include <iostream>
#include <functional>


namespace speedup {

typedef std::map<std::string, std::string> Attributes;

class SaxHandler
{
 public:
  virtual void StartElement(const std::string& qName, const Attributes& attrMap) = 0;
  virtual void EndElement(const std::string& qName) = 0;
  virtual void TextElement(const std::string& text) = 0;
};


class XMLReader
{
 public:
  XMLReader();
  virtual ~XMLReader();

  void parse(std::string name);
  void SetSaxHandler(SaxHandler* handler) { handler_ = handler; }

 private:
  void CharOnIdle(char ch);
  void CharOnMarkup(char ch);
  void CharOnContent(char ch);
  
  void CharOnStartMarkup(char ch);
  void CharOnEndMarkup(char ch);
  void CharOnEmptyMarkup(char ch);
  
  void CharOnAttribute(char ch);

  void OnMarkup();
  void CallStartElement();
  void CallEndElement();

  
 private:
  std::stringstream stringstream_;
  std::function<void(XMLReader*, char)> char_func_;
  SaxHandler* handler_;
  
};


}  // speedup





#endif /* SPEEDUP_XML_READER_H_ */
