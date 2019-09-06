FROM osixia/openldap:1.2.5
MAINTAINER Aaron
ENV LDAP_ORGANISATION=DEEPTEL.COM LDAP_DOMAIN=deeptel.com LDAP_ADMIN_PASSWORD=666666
RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "BASE    dc=deeptel,dc=com\nURI     ldap://127.0.0.1:389  ldaps://ldap.deeptel.com" >> /etc/ldap/ldap.conf
