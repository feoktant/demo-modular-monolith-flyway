enablePlugins(FlywayPlugin)

name := "demo-modular-monolith-flyway"

version := "0.1"

scalaVersion := "2.13.3"

libraryDependencies ++= Seq(
  "org.postgresql" % "postgresql"  % "42.2.14",
  "org.flywaydb"   % "flyway-core" % "7.2.0",
)

flywayUrl := "jdbc:postgresql://localhost:5432/postgres"
flywayUser := "postgres"
flywayPassword := "mysecretpassword"
flywayOutOfOrder := true
