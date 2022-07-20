local present, jdtls= pcall(require, "jdtls")
local present2, jdtlsSetup= pcall(require, "jdtls.setup")
   if not present and present2 then
      return
   end
local config = {

cmd = {
      "java",
      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      "-Dosgi.bundles.defaultStartLevel=4",
      "-Declipse.product=org.eclipse.jdt.ls.core.product",
      "-Dlog.protocol=true",
      "-Dlog.level=ALL",
      "-Xms1g",
      "--add-modules=ALL-SYSTEM",
      "--add-opens",
      "java.base/java.util=ALL-UNNAMED",
      "--add-opens",
      "java.base/java.lang=ALL-UNNAMED",
      "-jar",
      "/home/kud/.javaNvim/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
      "-configuration",
      "/home/kud/.javaNvim/config_linux",
      "/config_linux",
      "-data",
      "/home/kud/.javaNvim/workspace/folder"
   },
   root_dir = jdtlsSetup.find_root({".git", "mvnw", "gradlew"}),
   settings = {
      java = {}
   },
   init_options = {
      bundles = {}
   }
}
jdtls.start_or_attach(config)
