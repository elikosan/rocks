package = "findcuda"
version = "scm-1"

source = {
   url = "git://github.com/torch/FindCUDA.git",
}

description = {
   summary = "cmake FindCUDA module",
   detailed = [[
   ]],
   homepage = "https://github.com/hughperkins/FindCUDA.git",
   license = "MIT"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE) install
]],
   install_command = "cd build"
}
