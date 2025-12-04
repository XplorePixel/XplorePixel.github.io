#!/usr/bin/env pwsh

# 快速部署脚本 - PowerShell 版本
# 使用方法: ./deploy.ps1

Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host "个人主页快速部署脚本" -ForegroundColor Cyan
Write-Host "=====================================================" -ForegroundColor Cyan

# 检查是否在项目目录
if (-not (Test-Path "index.html")) {
    Write-Host "❌ 错误：找不到 index.html，请确保在项目根目录运行此脚本" -ForegroundColor Red
    exit 1
}

# 检查是否初始化 git
if (-not (Test-Path ".git")) {
    Write-Host "⚠️  未检测到 Git 仓库，正在初始化..." -ForegroundColor Yellow
    git init
    Write-Host "✅ Git 仓库已初始化" -ForegroundColor Green
}

# 询问 GitHub 仓库地址
Write-Host ""
Write-Host "请输入你的 GitHub 仓库地址（例如 https://github.com/username/username.github.io.git）：" -ForegroundColor Cyan
$repoUrl = Read-Host "仓库地址"

if ([string]::IsNullOrWhiteSpace($repoUrl)) {
    Write-Host "❌ 仓库地址不能为空" -ForegroundColor Red
    exit 1
}

# 添加远程仓库
Write-Host "✅ 正在添加远程仓库..." -ForegroundColor Green
git remote remove origin 2>$null
git remote add origin $repoUrl
Write-Host "✅ 远程仓库已添加" -ForegroundColor Green

# 提交和推送
Write-Host ""
Write-Host "⏳ 正在添加文件..." -ForegroundColor Yellow
git add .
Write-Host "✅ 文件已添加" -ForegroundColor Green

Write-Host ""
Write-Host "⏳ 正在提交更改..." -ForegroundColor Yellow
git commit -m "初始化/更新个人主页"
Write-Host "✅ 更改已提交" -ForegroundColor Green

Write-Host ""
Write-Host "⏳ 正在推送到 GitHub..." -ForegroundColor Yellow
git push -u origin main
if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️  推送到 main 分支失败，尝试 master 分支..." -ForegroundColor Yellow
    git push -u origin master
}

Write-Host ""
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host "✅ 部署完成！" -ForegroundColor Green
Write-Host "=====================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "你的网站将在以下地址访问：" -ForegroundColor Green
Write-Host "https://username.github.io" -ForegroundColor Yellow
Write-Host ""
Write-Host "注：将 'username' 替换为你的 GitHub 用户名" -ForegroundColor Gray
Write-Host "部署需要 1-2 分钟，请稍候后刷新页面" -ForegroundColor Gray
Write-Host ""
