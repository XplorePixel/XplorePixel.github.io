/**
 * 个人主页配置文件
 * 修改这个文件的内容即可更新整个网站
 */

const siteConfig = {
  // 基础信息
  profile: {
    name: 'Xplorer',
    subtitle: 'AI for Science | Computer Vision ',
    avatar: 'avatar.jpg',
    email: 'jasonfromcumt@gmail.com',
    githubUrl: 'https://github.com/XplorePixel',
  },

  // 星尘特效配置（可被 index.html 读取并覆盖默认行为）
  starEffect: {
    // 持续时间（毫秒）
    duration: 1000,
    // 粒子数量下限
    minParticles: 50,
    // 粒子数量上限
    maxParticles: 200,
    // 面积除数：用于根据屏幕面积计算粒子数量（area / areaDivisor）
    areaDivisor: 1000,
    // 颜色调色板（数组）
    palette: ['#fff7d6', '#ffd1a8', '#ffd6f0', '#cfe9ff', '#ffffff']
  },

  // 关于我部分
  about: {
    title: '关于我',
    intro: '正就读于中国矿业大学自动化专业，研究聚焦 LLM | CV ，致力于 AI Drug Design',
    passion: '研究成果：......',
    motto: 'Function describes the world, Code describes the function.',
  },

  // 代码仓库
  repositories: [
    {
      icon: '🧬',
      title: 'Jittor-DKD',
      desc: '使用Jittor框架复现DKD蒸馏方法',
      tags: ['知识蒸馏','Jittor'],
      url: 'https://github.com/XplorePixel/Jittor_DKD',
    },
    {
      icon: '🏎️',
      title: 'IPC-Smart-Car-Race',
      desc: '全国大学生智能车竞赛——图像处理培训资料',
      tags: ['图像处理', '二值化', '边缘检测'],
      url: 'https://github.com/XplorePixel/IIPC-Smart-Car-Race',
    },


  ],

  // 文章
  articles: [
    {
      title: '666',
      date: '2024年11月15日',
      desc: '探讨如何使用卷积神经网络和Transformer架构来改进siRNA靶标预测的准确率，包括特征工程、模型选择和验证策略的详细讨论。',
      tags: ['RNA', '深度学习', '生物信息学'],
      url: '#',
    },
  ],
};
