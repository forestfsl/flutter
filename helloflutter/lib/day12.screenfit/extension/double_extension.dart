import '../shared/size_fit.dart';

extension DoubleFit on double{
  double get px {
    return SLSizeFit.setPx(this);
  }

  double get rpx {
    return SLSizeFit.setRpx(this);
  }
}