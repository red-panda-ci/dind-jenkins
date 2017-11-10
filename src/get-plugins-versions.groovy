#!groovy

def plugins = jenkins.model.Jenkins.instance.getPluginManager().getPlugins().sort()
println "Total number of plugins: ${plugins.size()}"
println ""
plugins.each {println "* ${it.getShortName()} - ${it.getVersion()}"}
