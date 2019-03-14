FROM liferay/dxp:7.1.10.1
COPY activation-key-digitalenterprisedevelopment-7.1-liferaycom.xml /opt/liferay/deploy
COPY config/com.liferay.portal.search.elasticsearch6.configuration.ElasticsearchConfiguration.config /opt/liferay/osgi/configs
COPY config/com.liferay.portal.store.file.system.configuration.AdvancedFileSystemStoreConfiguration.config /opt/liferay/osgi/configs
COPY tcp.xml /opt/liferay/
USER root
RUN rm -f /opt/liferay/deploy/license-20190222.xml && \
    chmod +x /opt/liferay/deploy/activation-key-digitalenterprisedevelopment-7.1-liferaycom.xml && \
    chown liferay:liferay -R /opt/liferay
USER liferay