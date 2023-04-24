me quede en el minuto 1:36:34 modificando el archivo bufferline.rc.lua AUN NO LO TERMINO TIENE BUGS ARREGLAR

POR EL MOMENTO SOLO SE PUEDE DESPLAZAR LA PREDICCION DE PALABRA CON CONTROL + N PARA LSP (CONFIGURAR ESTE PEDO MAS ADELANTE)

el directorio de la configuracion es el "AppData/Local/nvim"

* instalar chocolatey
* instalar neovim desde chocolatey
* la direccion de la carpeta de la configuracion de neovim tiene que ir en la direccion [User]\AppData\Local\nvim
* instalar packer desde terminal powershell, instrucciones en repositorio original https://github.com/wbthomason/packer.nvim
* :PackerInstall para instalar todos los plugins
* instalar nerdfonts desde https://www.nerdfonts.com/ aqui 
* LINK para languages servers de LSP https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
* LINK de documentacion LSP https://github.com/neovim/nvim-lspconfig
* descargar scoop en windows (link: https://scoop.sh/) solamente pegar esas lineas de codigo en la powershell pero corriendolo como no administrador (link youtube: https://www.youtube.com/watch?v=sZS7mG_zhaw&ab_channel=KskRoyal)
* descargar lua-language-server con comando (scoop install lua-language-server) link repo: https://github.com/LuaLS/lua-language-server/wiki/Getting-Started#command-line
* instalar typescript-laguage-server con el siguiente comando: " >npm install -g typescript typescript-language-server " mas informacion en siguiente link: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
* instalar compilador C++ para treesitter que funcione esto se hace con el comando "choco install mingw" que instala el paquete desde chocolatey
* instalar ripgrep para telescope (se descarga con el comando '>choco install ripgrep' usando chocolatey)
* instalar https://github.com/fsouza/prettierd con el comando npm install -g @fsouza/prettierd
* instalar con el comando npm install -g eslint_d   -> esto sirve para el null-ls para darle formato a codigo





-- INFO DE CODIGO --

* en el archivo after/plugin/treesitter.rc.lua se encuentran todos los lenguajes instalados para treesitter para checar que lenguajes hay puedes revisar con el comando ":TSInstallInfo" y te salen todos los lenguajes y si quiero uno solo lo agrego en el archivo que dije
* en el archivo aftes/plugin/telescope.rc.lua alfinal se pueden agregar pickers que hay demasiados para muchas cosas (el listado esta aqui: https://github.com/nvim-telescope/telescope.nvim#pickers)
* en el archivo lspsaga.rc.lua se encuentran los keymaps para lspsaga (como el re renombrar variable, ver el hover del error, ir a definition y todas esas cosas) en este link vienen todas las funciones que existen de esta herramienta muy utiles la verdad: https://github.com/nvimdev/lspsaga.nvim
* para darle formato al codigo usar :Prettier
