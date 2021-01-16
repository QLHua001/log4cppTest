#include <iostream>

#include <log4cpp/Category.hh>

#include <log4cpp/PropertyConfigurator.hh>

int main(int argc, char* argv[]){
	try{
		log4cpp::PropertyConfigurator::configure("./log4cpp.conf");
	}catch(log4cpp::ConfigureFailure& f){
		std::cout << "Configure Problem!" << f.what() << std::endl;
		return -1;
	}
	log4cpp::Category& root = log4cpp::Category::getRoot();
	log4cpp::Category& sub1 = log4cpp::Category::getInstance(std::string("sub1"));
	log4cpp::Category& sub1_son = log4cpp::Category::getInstance(std::string("sub1.son"));
	log4cpp::Category& sub1_daughter = log4cpp::Category::getInstance(std::string("sub1.daughter"));
	
	root.info("root info message");
	root.alert("root alert message");
	
	
	sub1.debug("sub1 debug message");
	sub1.error("sub1 error message");
	
	sub1_son.fatal("sub1_son fatal message");
	sub1_son.warn("sub1_son warn message");
	
	sub1_daughter.error("sub1_daughter error message");
	sub1_daughter.crit("sub1_daughter crit message");
	
	
	sub1_daughter.log(log4cpp::Priority::WARN, "This will be a logged warnning");
	
	return 0;
}