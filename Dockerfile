FROM windev/webdev-base:US240077f

COPY Honolulu.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/Honolulu

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/Honolulu/

RUN cp ${WEBDEVConfiguration}comptes/Sites/Honolulu/HONOLULU.INI ${WEBDEVConfiguration}comptes/Data/Honolulu/