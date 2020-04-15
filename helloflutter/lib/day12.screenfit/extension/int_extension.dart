import '../shared/size_fit.dart';

extension IntFit on int {
  double get px{
    return SLSizeFit.setPx(this.toDouble());
  }

  double get rpx{
    return SLSizeFit.setPx(this.toDouble());
  }
}