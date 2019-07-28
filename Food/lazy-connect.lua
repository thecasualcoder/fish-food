local name = "lazy-connect"
local version = "1.5.0"

food = {
    name = name,
    description = "Shell function to fuzzy search an IPSec VPN by name and connect to it automatically",
    license = "MIT",
    homepage = "https://github.com/thecasualcoder/lazy-connect",
    version = version,
    packages = {
        {
            os = "darwin",
            arch = "amd64",
            url = "https://github.com/thecasualcoder/lazy-connect/archive/v" .. version .. ".tar.gz",
            sha256 = "246d5095d72f8c29f71cc3722a31fb8204869513ffdfc2e6af9e713bc9848b52",
            resources = {
                {
                    path = "lazy-connect-"..version.."/lazy-connect",
                    installpath = "bin/lazy-connect",
                    executable = true
                }
            }
        }
    },
    caveats = [[Note: lazy-connect needs oath-toolkit and fzf to work.]]
}
