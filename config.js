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
    email: 'xplorer@example.com',
    githubUrl: 'https://github.com',
  },

  // 关于我部分
  about: {
    title: '关于我',
    intro: '我是一名对生物信息学和深度学习充满热情的研究者。专注于 siRNA 序列预测与 RNA 深度学习研究，通过融合生物信息学与机器学习，探索化学修饰 RNA 的高效靶标识别策略。相信优雅的算法能够解码生命的秘密。',
    passion: '在编程方面，我热衷于用 Python 进行科学计算和数据分析，用 JavaScript 创作沉浸式的可视化交互体验。致力于开发高效、优雅的工具和方法，让科研工作变得更有意思。',
    motto: '静坐思考，优雅编码，让数据讲述生命的故事。',
  },

  // 代码仓库
  repositories: [
    {
      icon: '🧬',
      title: 'Jittor-DKD',
      desc: '使用Jittor框架复现DKD蒸馏方法',
      tags: ['Python', 'PyTorch','Jittor'],
      url: 'https://github.com/XplorePixel/Jittor_DKD',
    },
    {
      icon: '🏎️',
      title: 'IPC-Smart-Car-Race',
      desc: '全国大学生智能车竞赛——计算机视觉培训资料',
      tags: ['python', 'c++'],
      url: 'https://github.com/XplorePixel/IIPC-Smart-Car-Race',
    },


  ],

  // 文章
  articles: [
    {
      title: '深度学习在 siRNA 预测中的应用',
      date: '2024年11月15日',
      desc: '探讨如何使用卷积神经网络和Transformer架构来改进siRNA靶标预测的准确率，包括特征工程、模型选择和验证策略的详细讨论。',
      tags: ['RNA', '深度学习', '生物信息学'],
      url: '#',
    },
  ],
};
