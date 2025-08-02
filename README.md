# Claude Desktop + Wazuh MCP Server Integration

This project provides a simple script to set up [Claude Desktop](https://github.com/aaddrick/claude-desktop-debian) alongside the [Wazuh MCP Server](https://github.com/gbrigandi/mcp-server-wazuh) on Ubuntu. Once installed, Claude can be used to interact with alerts from Wazuh via natural language.



## 🔧 What the Script Does

1. **Claude Desktop Installation**  
   - Clones the Claude Desktop repository.
   - Builds and installs the `.deb` package.
   - Fixes any dependencies via `apt`.

2. **MCP Server Installation**  
   - Automatically fetches the **latest release** of the Wazuh MCP Server from GitHub.
   - Downloads and makes it executable.

## 📦 How to Use

```bash
git clone https://github.com/iamblacklight/wazuh-claude-integration.git
cd wazuh-claude-integration
chmod +x install.sh
./install.sh

```

## Credits
Claude Desktop
GitHub: aaddrick/claude-desktop-debian
Author: @aaddrick

Wazuh MCP Server
GitHub: gbrigandi/mcp-server-wazuh
Author: @gbrigandi

