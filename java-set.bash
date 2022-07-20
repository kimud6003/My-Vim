INSTALL_FOLDER="$HOME/.local/share/nvim"

# JDTLS 폴더 
mkdir -p "$INSTALL_FOLDER/lsp_servers/jdtls"
cd "$INSTALL_FOLDER/lsp_servers/jdtls"

# JDTLS 설치
wget https://download.eclipse.org/jdtls/milestones/1.9.0/jdt-language-server-1.9.0-202203031534.tar.gz
tar -zxvf jdt-language-server-1.9.0-202203031534.tar.gz


# 디버그 설치 
rm -rf "$INSTALL_FOLDER/java-debug"
git clone https://github.com/microsoft/java-debug.git "$INSTALL_FOLDER/java-debug"
cd "$INSTALL_FOLDER/java-debug" && ./mvnw clean install

# Test 설치 
rm -rf "$INSTALL_FOLDER/vscode-java-test"
git clone https://github.com/microsoft/vscode-java-test.git "$INSTALL_FOLDER/vscode-java-test"
cd "$INSTALL_FOLDER/vscode-java-test" && npm install && npm run build-plugin
