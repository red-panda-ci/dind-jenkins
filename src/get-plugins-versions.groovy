#!groovy
def plugins = jenkins.model.Jenkins.instance.getPluginManager().getPlugins()
plugins = new ArrayList(plugins).sort()
println "Total number of plugins: ${plugins.size()}"
println ""
plugins.each {println "* ${it.getShortName()} - ${it.getVersion()}"}
