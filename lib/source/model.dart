/// 选项
part of simple_confirm;

/// 弹出框选项
/// 如果 [closeableViaMask] 为true，点击遮罩会触发 [onCancel] 如果 [onCancel]不为null
class SimpleConfirmOptions {
  /// 标题
  final String? title;

  /// 内容
  final String content;

  /// 确认按钮文字
  final String? confirmText;

  /// 取消按钮文字
  final String? cancelText;

  /// 确认
  final VoidCallback? onConfirm;

  /// 取消
  final VoidCallback? onCancel;

  /// 点击遮罩关闭
  final bool closeableViaMask;

  SimpleConfirmOptions(
      {this.title,
      required this.content,
      this.confirmText,
      this.cancelText,
      this.onConfirm,
      this.onCancel,
      this.closeableViaMask = true});
}
