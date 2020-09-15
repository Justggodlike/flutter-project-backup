class AuthRichSpanModel {
  final String text;
  final bool isTappable;
  final Function onTap;

  AuthRichSpanModel({
    this.text = '',
    this.isTappable = false,
    this.onTap,
  });
}
