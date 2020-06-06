if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# navigation
alias ..="cd ../"
alias ...="cd ../.."
alias ....="cd ../../.."

# python
alias python="/Library/Frameworks/Python.framework/Versions/3.8/bin/python3.8"
export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.8/bin

# java
JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-13.jdk/Contents/Home

M2_HOME=/Users/yiyang/apache-maven-3.6.3
export PATH=$PATH:$M2_HOME/bin
