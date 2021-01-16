#include <iostream>
#include <log4cpp/Category.hh>
#include <log4cpp/Appender.hh>
#include <log4cpp/FileAppender.hh>
#include <log4cpp/RollingFileAppender.hh>
#include <log4cpp/PatternLayout.hh>
#include <log4cpp/Priority.hh>
using namespace std;

int main(int argc, char* argv[]){
	log4cpp::PatternLayout* pLayout1 = new log4cpp::PatternLayout();
	pLayout1->setConversionPattern("%d: %p %c %x: %m%n");
	
	log4cpp::PatternLayout* pLayout2 = new log4cpp::PatternLayout();
	pLayout2->setConversionPattern("%d: %p %c %x: %m%n");
	
	log4cpp::Appender* fileAppender = new log4cpp::FileAppender("fileAppender", "wxb.log");
	fileAppender->setLayout(pLayout1);
	
	log4cpp::Appender* rollingFileAppender = new log4cpp::RollingFileAppender("rollingFileAppender", "rollwxb.log", 5*1024, 1);
	rollingFileAppender->setLayout(pLayout2);
	
	log4cpp::Category& root = log4cpp::Category::getRoot().getInstance("RootName");
	root.addAppender(fileAppender);
	root.addAppender(rollingFileAppender);
	root.setPriority(log4cpp::Priority::DEBUG);
	
	for(int i = 0; i < 100; i++){
		string strError;
		ostringstream oss;
		oss << i << ": Root Error Message";
		strError = oss.str();
		root.error(strError);
	}
	
	log4cpp::Category::shutdown();
	return 0;
}

