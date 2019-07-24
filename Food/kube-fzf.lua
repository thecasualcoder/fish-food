local name = "kube-fzf"
local version = "1.6.1"
local url = "https://github.com/thecasualcoder/kube-fzf/archive/v" .. version .. ".tar.gz"
local sha256 = "7c166523b1c0f54b4a6741366348778dbdf68063cd73282e39728436280c90d2"

function getResources(pathSeparator)
    local resources = {
        {
            path = "kube-fzf-"..version..pathSeparator.."kube-fzf.sh",
            installpath = "bin"..pathSeparator.."kube-fzf.sh",
            executable = true
        },
        {
            path = "kube-fzf-"..version.."findpod",
            installpath = "bin"..pathSeparator.."findpod",
            executable = true
        },
        {
            path = "kube-fzf-"..version..pathSeparator.."execpod",
            installpath = "bin"..pathSeparator.."execpod",
            executable = true
        },
        {
            path = "kube-fzf-"..version..pathSeparator.."tailpod",
            installpath = "bin"..pathSeparator.."tailpod",
            executable = true
        },
        {
            path = "kube-fzf-"..version..pathSeparator.."describepod",
            installpath = "bin"..pathSeparator.."describepod",
            executable = true
        },
        {
            path = "kube-fzf-"..version..pathSeparator.."pfpod",
            installpath = "bin"..pathSeparator.."pfpod",
            executable = true
        }
    }
end

food = {
    name = name,
    description = "Fuzzy search over Kubernetes Pods from the command-line",
    license = "MIT",
    homepage = "https://github.com/thecasualcoder/kube-fzf",
    version = version,
    packages = {
        {
            os = "darwin",
            arch = "amd64",
            url = url,
            sha256 = sha256,
            resources = getResources("/")
        },
        {
            os = "linux",
            arch = "amd64",
            url = "https://github.com/thecasualcoder/kube-fzf/archive/v" .. version .. ".tar.gz",
            sha256 = "7c166523b1c0f54b4a6741366348778dbdf68063cd73282e39728436280c90d2",
            resources = getResources("/")
        },
        {
            os = "windows",
            arch = "amd64",
            url = "https://github.com/thecasualcoder/kube-fzf/archive/v" .. version .. ".tar.gz",
            sha256 = "7c166523b1c0f54b4a6741366348778dbdf68063cd73282e39728436280c90d2",
            resources = getResources("\\")
        }
    },
    caveats = [[Note: kube-fzf needs kubectl and fzf to work.]]
}
