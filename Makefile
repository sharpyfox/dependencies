# Determine where the install directory is located.
TARGET?=$(HOME)/local

all: install_rabbitmq_c install_simple_amqp_client install_aerospike

install_aerospike:
	cd aerospike-client-c && export CPATH=$CPATH:/usr/include/lua5.1 && make && cp -avr target/*/include/* $(TARGET)/include && cp target/*/lib/* $(TARGET)/lib

install_thrift:
	cd thrift && ./bootstrap.sh && JAVA_PREFIX=$(TARGET) ./configure --prefix $(TARGET) --without-ruby --without-python --without-erlang --without-php --with-boost=$(TARGET)/ && (make -k install)

install_cassandra_lib:
	cd cassandra_libs_installer && cmake . -DCMAKE_INSTALL_PREFIX=$(TARGET) && make && make install

install_rabbitmq_c:
	cd rabbitmq-c && cmake . -DCMAKE_INSTALL_PREFIX=$(TARGET) && make && make install

install_simple_amqp_client:
	cd SimpleAmqpClient && mkdir build && cd build && cmake .. -DCMAKE_INSTALL_PREFIX=$(TARGET) -DBOOST_ROOT=$(TARGET) && cmake --build . --target install
