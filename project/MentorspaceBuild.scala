import sbt._
import Keys._
import play.Project._

object MentorspaceBuild extends Build {

   val appName         = "mentorspace"
   val appVersion      = "0.0.1"

   val postgres = "postgresql" % "postgresql" % "9.1-901.jdbc4"
   val slick = "com.typesafe.slick" %% "slick" % "1.0.0"
 //  "com.h2database" % "h2" % "1.3.171",


   lazy val main = play.Project(appName, appVersion, Seq.empty).settings(
     libraryDependencies ++= Seq(
       jdbc, postgres, slick
     )
   ) // dependsOn (infrastructure)

 }
