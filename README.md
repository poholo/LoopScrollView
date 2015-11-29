# LoopScrollView
UIScrollView 循环滚动Demo
###初始化
keypoint

1.按照3，1，2排列到UIScrollview容器上，conentOffset设置到第二屏

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/init_pic.png)

###1 右滑循环
keypoint

1.1 正常scrollview滚动到2位置

![图](https://github.com/poholo/LoopScrollView/raw/master/guidSource/1.1.png)

1.2 让2处于中间位置，3位于2的右边，1位于2左边

1.2.1 2- 1 交换位置 【序号】

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/1.2.1.png)

1.2.2 1 - 3 交换位置  

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/1.2.2.png)

1.2.3 充值frame位置 按照 容器 3 1 2 放置 且让contentOffset位于第二屏幕

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/1.3.png)

###2 左滑循环
keypoint

2.1 正常scrollview滚动到3位置

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/2.1.png)

2.2 让3处于中间位置，1位于3的右边，2位于3左边

2.2.1 3 - 1 交换位置 【序号】

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/2.2.1.png)

2.2.2 1 - 2 交换位置

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/2.2.2.png)

2.2.3 充值frame位置 按照 容器 3 1 2 放置 且让contentOffset位于第二屏幕

![图1](https://github.com/poholo/LoopScrollView/raw/master/guidSource/2.3.png)

