###############################################################################
#
# install.sh
# 
#
# a UNIX installation and setup script
###############################################################################

UNAME=`uname`
BASE_ROOT=`pwd`


setup_irix()
{
    cd ${BASE_ROOT}/irix

    echo "Making basic directories (bin, downloads, etc.) .."
    mkdir -p ${HOME}/bin
    mkdir -p ${HOME}/downloads
    mkdir -p ${HOME}/scripts


    echo "Copying backgrounds to ${HOME}/backgrounds dir ..."
    cp -R ./backgrounds ${HOME}/

    echo "Copying scripts to ${HOME}/scripts dir ..."
    cp -R ./scripts ${HOME}/

    cd ${BASE_ROOT}/scripts
    cp -R ./* ${HOME}/scripts/

    # do some basic prep
    echo "Making scripts directory contents executable ..."
    chmod +x ${HOME}/scripts/*


    # setup backgrounds for user
    echo "Running backgrounds script to create backgrounds for user ..."
    ${HOME}/scripts/backgrounds.sh
}



# Let's see which OS we are running on
case ${UNAME} in
    IRIX64)
        echo "IRIX detected"
        setup_irix
        ;;
    *)
        echo "OS not detected or unsupported"
        exit
        ;;
esac




