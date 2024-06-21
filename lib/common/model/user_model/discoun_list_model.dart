class DiscountList {
  const DiscountList({
    required this.percentage,
    required this.coin,
  });

  final int percentage;
  final int coin;

  factory DiscountList.fromJson(Map<String, Object?> json) => DiscountList(
        percentage: json['percentage'] as int? ?? 0,
        coin: json['coin'] as int? ?? 0,
      );

  Map<String, Object?> toJson() => <String, Object?>{
        'percentage': percentage,
        'coin': coin,
      };

  DiscountList copyWith({
    int? percentage,
    int? coin,
  }) =>
      DiscountList(
        percentage: percentage ?? this.percentage,
        coin: coin ?? this.coin,
      );

  @override
  bool operator ==(covariant DiscountList other) {
    if (identical(this, other)) return true;

    return other.percentage == percentage && other.coin == coin;
  }

  @override
  int get hashCode => percentage.hashCode ^ coin.hashCode;

  @override
  String toString() => 'DiscountList('
      'percentage: $percentage,'
      'coin: $coin)';
}
