#ifndef SPEEDUP_XML_READER_H_
#define SPEEDUP_XML_READER_H_

#include <string>
#include <map>
#include <sstream>
#include <iostream>
#include <functional>


namespace speedup {

class SaxHandler
{
 public:
  typedef std::map<std::string, std::string> AttrMap;
  
 public:
  virtual void startElement(const std::string& qName, const AttrMap& attrMap) = 0;
  virtual void endElement(const std::string& qName) = 0;
  virtual void textElement(const std::string& text) = 0;
};


class XMLReader
{
 public:
  XMLReader();
  virtual ~XMLReader();

  void parse(std::string name);

 private:
  void CharOnIdle(char ch);
  void CharOnMarkup(char ch);
  void CharOnContent(char ch);
  
 private:
  std::stringstream stringstream_;
  
};


}  // speedup





#endif /* SPEEDUP_XML_READER_H_ */
