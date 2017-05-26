package = "findcuda"
version = "scm-1"

source = {
   url = "git://github.com/elikosan/FindCUDA.git",
   branch="2017-05-26"
}

description = {
   summary = "cmake FindCUDA module",
   detailed = [[
   ]],
   homepage = "https://github.com/elikosan/FindCUDA.git",
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
