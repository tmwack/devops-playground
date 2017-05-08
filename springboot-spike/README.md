# Springboot Spike

Notes, artifacts, and other code produced while spiking [Springboot](https://projects.spring.io/spring-boot/), a Java web service framework.

## About Springboot

Springboot is a framework for writing Java web services. Harnessing the time-tested Spring framework, Springboot favors configuration over convention to produce "production-ready Spring applications." In other words, Springboot uses configuration to scaffold Spring framework components -- providing a minimalistically-specificied Spring application.

As of the time of this document, **v1.5.x is the current major/minor version of Springboot.**

### Features

* Deploy with Tomcat, Jetty, Undertow
  * Fat JARs (yay!)
* Maven or Gradle
* Configuration from many sources
  * Enviroment variables, Properties file, YAML file, command-line arguments
* Facaded logging, pluggable implementation
  * Logback, log4j, java.util.logging
* HTTP APIs with Spring MVC
    * May use JAX-RS + Jersey as well