#include <iostream>
#include <log4cpp/Category.hh>
//#include <log4cpp/Appender.hh>
#include <log4cpp/OstreamAppender.hh>
#include <log4cpp/BasicLayout.hh>
#include <log4cpp/Priority.hh>

using namespace std;

int main(int argc, char* argv[]){
	log4cpp::OstreamAppender* ostreamAppender = new log4cpp::OstreamAppender("ostreamAppender", &cout);
	ostreamAppender->setLayout(new log4cpp::BasicLayout());
	
	log4cpp::Category& root = log4cpp::Category::getRoot();
	root.addAppender(ostreamAppender);
	root.setPriority(log4cpp::Priority::DEBUG);
	
	root.error("Hello log4cpp in a ERROR message!");
	root.warn("Hello log4cpp in a WARNNING message");
	
	log4cpp::Category::shutdown();
	return 0;
}
