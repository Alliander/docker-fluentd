FROM fluent/fluentd:latest-onbuild
MAINTAINER Sander Schoot Uiterkamp
USER root
	
RUN apk --no-cache --update add \
		ruby-dev \
		build-base \
		libffi-dev && \
	gem install fluent-plugin-kubernetes_metadata_filter fluent-plugin-elasticsearch fluent-plugin-parser fluent-plugin-rewrite-tag-filter fluent-plugin-record-reformer && \
	apk del build-base ruby-dev libffi-dev && \
	rm -rf /tmp/* /var/tmp/* /var/cache/apk/*

WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.3.0/bin:$PATH
CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT

EXPOSE 24224 5140 5170