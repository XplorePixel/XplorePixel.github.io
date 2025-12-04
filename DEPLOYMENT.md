# GitHub Pages 部署指南

本指南将帮助你把个人主页部署到 GitHub Pages。

## 方式一：使用 `username.github.io` 仓库（推荐）

### 第 1 步：创建仓库
1. 在 GitHub 上创建一个 **新仓库**
2. 仓库名必须为：`username.github.io`（将 `username` 替换为你的 GitHub 用户名）
3. 仓库设置为 **Public**

### 第 2 步：克隆仓库到本地
```bash
git clone https://github.com/username/username.github.io.git
cd username.github.io
```

### 第 3 步：复制项目文件
把 `e:\Code\Github\Test\` 下的以下文件复制到仓库目录：
- `index.html`
- `repositories.html`
- `articles.html`
- `config.js`
- `avatar.jpg`（如果有的话）

### 第 4 步：推送到 GitHub
```bash
git add .
git commit -m "初始化个人主页"
git push origin main
```

### 第 5 步：访问你的网站
打开浏览器，访问：`https://username.github.io`

即可看到你的个人主页！

---

## 方式二：使用项目仓库 + GitHub Pages（适合已有仓库）

### 第 1 步：推送到现有仓库
如果你已经有一个仓库（例如 `my-homepage`），在该仓库根目录放置所有文件。

### 第 2 步：启用 GitHub Pages
1. 进入仓库的 **Settings**
2. 在左侧菜单找到 **Pages**
3. 在 **Source** 中选择 **Deploy from a branch**
4. 选择分支为 **main**（或你使用的分支）
5. 点击 **Save**

### 第 3 步：访问你的网站
GitHub Pages 会自动为你分配一个 URL：
`https://username.github.io/my-homepage`

---

## 方式三：自动部署（使用 GitHub Actions）

如果你想在每次提交时自动部署，可以创建一个工作流文件：

1. 在仓库根目录创建文件夹：`.github/workflows/`
2. 创建文件 `deploy.yml`，内容如下：

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches:
      - main

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./
          cname: your-domain.com  # 如果有自定义域名，填写这里；否则删除此行
```

3. 推送到 GitHub：
```bash
git add .github/workflows/deploy.yml
git commit -m "添加 GitHub Actions 自动部署"
git push origin main
```

之后，每次你推送代码到 `main` 分支时，GitHub Actions 会自动部署。

---

## 配置自定义域名（可选）

如果你有自己的域名，可以在 GitHub Pages 中配置：

1. 进入仓库 **Settings** → **Pages**
2. 在 **Custom domain** 输入你的域名（例如 `xplorer.com`）
3. 将你的域名 DNS 指向 GitHub Pages 的服务器

具体步骤详见：[GitHub Pages 官方文档](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)

---

## 常见问题

### Q1: 如何修改网站内容？
编辑 `config.js` 文件中的内容，然后提交推送到 GitHub：
```bash
git add config.js
git commit -m "更新个人信息"
git push origin main
```

### Q2: 如何添加新的仓库或文章？
在 `config.js` 中的 `repositories` 或 `articles` 数组中添加新条目即可。

### Q3: 网站没有更新？
- 等待 1-2 分钟让 GitHub Pages 重新构建
- 用 Ctrl+Shift+Delete 清除浏览器缓存
- 检查仓库是否为 Public

### Q4: 如何使用自己的头像？
1. 把头像图片（命名为 `avatar.jpg`）放在仓库根目录
2. 确保 `config.js` 中 `avatar: 'avatar.jpg'`
3. 提交推送

---

## 快速命令参考

```bash
# 克隆仓库
git clone https://github.com/username/username.github.io.git

# 进入目录
cd username.github.io

# 查看状态
git status

# 添加所有文件
git add .

# 提交更改
git commit -m "更新网站"

# 推送到 GitHub
git push origin main

# 查看日志
git log --oneline
```

---

祝你部署顺利！如有问题，欢迎查阅 [GitHub Pages 官方文档](https://docs.github.com/en/pages)。
