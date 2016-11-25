#include "xml_reader.h"

#include <iostream>

class MySaxHandler : public speedup::SaxHandler
{
 public:
  virtual void StartElement(const std::string& qName, const speedup::Attributes& attrMap) override;
  virtual void EndElement(const std::string& qName) override;
  virtual void TextElement(const std::string& text) override;

  
};

void MySaxHandler::StartElement(const std::string& qName, const speedup::Attributes& attrMap) 
{
  std::cout<< "StartElement : " << qName << std::endl;
  for( auto&& it : attrMap ) {
    std::cout<< "key : " << it.first << " value : "<< it.second << std::endl;
  }
}
void MySaxHandler::EndElement(const std::string& qName) 
{
  std::cout<< "EndElement : " << qName << std::endl;
}
void MySaxHandler::TextElement(const std::string& text) 
{
  std::cout<< "TextElement : " << text << std::endl;
}

int main()
{
  speedup::XMLReader reader;
  reader.SetSaxHandler(new MySaxHandler());
  reader.parse("test.xml");
}
