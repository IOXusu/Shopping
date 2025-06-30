## 鸿蒙项目实战

### 1.提示

android
```
Toast.makeText(context, "提示内容", Toast.LENGTH_SHORT).show();
```
Harmony
```typescript
 promptAction.showToast({ message: '登录成功' });
```
iOS
```c
iOS需要自定义view，添加到页面上
```

### 2.装饰器
@Entry //入口装饰器 

@Component //组件装饰器

@State //状态装饰器

@Extend //扩展组件样式装饰器

@Preview //预览装饰器



