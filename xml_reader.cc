#include "xml_reader.h"

namespace speedup {


XMLReader::XMLReader()
{}

XMLReader::~XMLReader()
{}

void XMLReader::parse(std::string filename)
{
  ifstream file(filename);
  if (file.is_open())
  {
    char buf;
    while ( get(buf) ) {
    }
    file.close();
  }
}

void XMLReader::CharOnIdle(char ch)
{
  switch(buf) {
    case '<':
      
      break;
    case '/':

      break;
    case '>':

      break;
      
  }
}

void XMLReader::CharOnMarkup(char ch)
{
  switch(buf) {
    case '<':
          
      break;
    case '/':

      break;
    case '>':

      break;
  }
}

void XMLReader::CharOnContent(char ch)
{
  switch(buf) {
    case '<':
          
      break;
    case '/':

      break;
    case '>':

      break;

  }
}




}  // speedup
