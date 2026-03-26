# Github Daily Papers

这是一个单独的 GitHub Pages 试验目录，用来验证“每日文献网站”上线流程。

原则：
- 不改当前主版本
- 单独维护一个可部署目录
- 发布文件集中在 `docs/`

**目录结构**
- `docs/index.html`
- `docs/daily-papers-site-data.json`
- `docs/archive/index.json`
- `docs/archive/*.json`
- `docs/.nojekyll`

**你平时怎么更新**
1. 先在主项目里更新当天文献

```bash
npm run daily-papers
```

2. 再同步到 GitHub Pages 试验目录

```bash
./Github_daily_papers/update.sh
```

**如果你想直接拿这个目录建 GitHub Pages**
方案 A：整个项目就是一个仓库
- 把当前项目推到 GitHub
- 进入 GitHub 仓库 `Settings -> Pages`
- `Source` 选 `Deploy from branch`
- Branch 选 `main`
- Folder 选 `/Github_daily_papers/docs` 不支持直接选子目录

说明：
- GitHub Pages 原生只能选仓库根目录 `/` 或 `/docs`
- 所以如果你保留现在这种子目录结构，最稳的办法是把 `Github_daily_papers/docs` 单独拎成一个新仓库

方案 B：把 `Github_daily_papers` 单独建成一个仓库
- 新建一个 GitHub 仓库，比如 `github-daily-papers`
- 把 `Github_daily_papers/docs` 里的内容放到这个新仓库的 `docs/`
- GitHub Pages 设置成 `main / docs`

这样上线后：
- `docs/index.html` 就是首页
- `docs/archive/index.json` 负责日期切换
- `docs/archive/*.json` 负责历史数据

**推荐做法**
- 继续在主项目里维护内容
- 每天运行：

```bash
npm run daily-papers
./Github_daily_papers/update.sh
```

- 然后把 `Github_daily_papers/docs` 同步到一个单独的 GitHub Pages 仓库

这样主项目和线上站点是分开的，最稳。
