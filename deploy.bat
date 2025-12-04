@echo off
REM 快速部署脚本 - Windows 版本
REM 使用方法: 在命令行运行 deploy.bat

setlocal enabledelayedexpansion

echo =====================================================
echo 个人主页快速部署脚本
echo =====================================================

REM 检查是否在项目目录
if not exist "index.html" (
    echo ❌ 错误：找不到 index.html，请确保在项目根目录运行此脚本
    exit /b 1
)

REM 检查是否初始化 git
if not exist ".git" (
    echo ⚠️  未检测到 Git 仓库，正在初始化...
    git init
    echo ✅ Git 仓库已初始化
)

REM 询问 GitHub 仓库地址
echo.
echo 请输入你的 GitHub 仓库地址（例如 https://github.com/username/username.github.io.git）：
set /p REPO_URL="仓库地址: "

if "!REPO_URL!"=="" (
    echo ❌ 仓库地址不能为空
    exit /b 1
)

REM 添加远程仓库
git remote remove origin 2>nul
git remote add origin !REPO_URL!
echo ✅ 远程仓库已添加

REM 提交和推送
echo.
echo ⏳ 正在添加文件...
git add .
echo ✅ 文件已添加

echo.
echo ⏳ 正在提交更改...
git commit -m "初始化/更新个人主页"
echo ✅ 更改已提交

echo.
echo ⏳ 正在推送到 GitHub...
git push -u origin main
if !errorlevel! neq 0 (
    echo ⚠️  推送失败，尝试推送到 master 分支...
    git push -u origin master
)

echo.
echo =====================================================
echo ✅ 部署完成！
echo =====================================================
echo.
echo 你的网站将在以下地址访问：
echo https://username.github.io
echo.
echo 注：将 'username' 替换为你的 GitHub 用户名
echo 部署需要 1-2 分钟，请稍候后刷新页面
echo.
pause
