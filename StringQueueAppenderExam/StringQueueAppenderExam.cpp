#include <iostream>
#include <log4cpp/Category.hh>
#include <log4cpp/OstreamAppender.hh>
#include <log4cpp/BasicLayout.hh>
#include <log4cpp/Priority.hh>
#include <log4cpp/StringQueueAppender.hh>


/*
	记录完成后需要程序员自己从队列中取出每条日志

*/
using namespace std;

int main(int argc, char* argv[]){
	log4cpp::StringQueueAppender* strQAppender = new log4cpp::StringQueueAppender("strQAppender");
	strQAppender->setLayout(new log4cpp::BasicLayout());
	
	log4cpp::Category& root = log4cpp::Category::getRoot();
	root.addAppender(strQAppender);
	root.setPriority(log4cpp::Priority::DEBUG);
	
	root.warn("Hello Log4cpp in a warnning message!");
	root.error("Hello Log4cpp in a error message!");
	
	cout << "Get message from Memory Queue..." << endl;
	cout << "==================================" << endl;
	queue<string>& myStrQ = strQAppender->getQueue();
	while(!myStrQ.empty()){
		cout << myStrQ.front();
		myStrQ.pop();
		
	}
	
	log4cpp::Category::shutdown();
	return 0;
}
