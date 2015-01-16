function dps -d "Abbreviated list of running Docker containers"
    if which docker > /dev/null
        docker ps $argv | awk '
NR==1{
    FIRSTLINEWIDTH=length($0)
    IDPOS=index($0,"CONTAINER ID");
    IMAGEPOS=index($0,"IMAGE");
    COMMANDPOS=index($0,"COMMAND");
    CREATEDPOS=index($0,"CREATED");
    STATUSPOS=index($0,"STATUS");
    PORTSPOS=index($0,"PORTS");
    NAMESPOS=index($0,"NAMES");
    UPDATECOL();
}
function UPDATECOL () {
    ID=substr($0,IDPOS,IMAGEPOS-IDPOS-1);
    IMAGE=substr($0,IMAGEPOS,COMMANDPOS-IMAGEPOS-1);
    COMMAND=substr($0,COMMANDPOS,CREATEDPOS-COMMANDPOS-1);
    CREATED=substr($0,CREATEDPOS,STATUSPOS-CREATEDPOS-1);
    STATUS=substr($0,STATUSPOS,PORTSPOS-STATUSPOS-1);
    PORTS=substr($0,PORTSPOS,NAMESPOS-PORTSPOS-1);
    NAMES=substr($0, NAMESPOS);
}
function PRINT () {
    print NAMES IMAGE STATUS CREATED COMMAND;
}
NR==2{
    NAMES=sprintf("%s%*s",NAMES,length($0)-FIRSTLINEWIDTH,"");
    PRINT();
}
NR>1{
    UPDATECOL();
    PRINT();
}';
    else
        echo "Docker could not be found. Is it installed?"
    end
end
