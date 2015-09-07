FROM centos:centos7
MAINTAINER makky <makky.4d6b.3f5@gmail.com>


# install packages
RUN yum install -y epel-release git gcc gcc-c++ g++ make libxml2 libxml2-devel

# install nodejs
RUN yum -y install nodejs
RUN node -v

# install ruby
RUN yum install -y ruby ruby-dev ruby-devel
RUN gem install bundler

# clone repository
RUN git clone https://github.com/makky3939/blog.makky.io.git

RUN gem install json
RUN gem install json_pure

# build app
# RUN cd blog.makky.io && bundle update
RUN cd blog.makky.io && bundle instal
RUN cd blog.makky.io && jekyll build
RUN cp -r blog.makky.io/dst/* /usr/share/nginx/html/