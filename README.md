# person

person.rb の実行

```
load 'person.rb'

# 孫を定義
mago_1_a = Person.new('mago_1_a')
mago_1_b = Person.new('mago_1_b')
mago_2_a = Person.new('mago_2_a')
mago_2_b = Person.new('mago_2_b')

# 子を定義
ko_1 = Person.new('ko_1', [mago_1_a, mago_1_b])
ko_2 = Person.new('ko_2', [mago_2_a, mago_2_b])

# 親を定義
oya = Person.new('oya', [ko_1, ko_2])

# 子を出力
oya.show_children_name
# => "ko_1,ko_2"

# 孫全員（最終）を出力
oya.show_final_children_name
# => "mago_1_a,mago_1_b,mago_2_a,mago_2_b"

# 長子の孫を出力
ko_1.show_children_name
# => "mago_1_a,mago_1_b"
```
