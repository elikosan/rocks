package = "nn"
version = "scm-1"

source = {
   url = "git://github.com/torch/nn.git",
}

description = {
   summary = "Neural Network package for Torch",
   detailed = [[
   ]],
   homepage = "https://github.com/diz-vara/nn",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]],
   install_command = "cd build && $(MAKE) install"
}
