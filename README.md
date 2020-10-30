
Part of Speech, POS

现代汉语的词可以分为12类。

实词：名词、动词、形容词、数词、量词和代词。
虚词：副词、介词、连词、助词、叹词、拟声词。


```text
noun 名词
verb 动词
adjective 形容词
numeral 数词
  基数： 一、二、百、千、万、亿
  序数 ：第一、第二、第三
  分数 ：十分之一、百分之二十
  倍数 ：一倍、十倍、百倍
  概数 ：几(个)、十来(个)、一百上下
classifier 量词
  量词是表示事物或动作单位的词
  名量词
  动量词
pronoun 代词
  人称代词
  疑问代词
  指示代词
adverb 副词
  通常用在动词、形容词前面
  如“很、颇、极、十分、就、都、马上、立 刻、曾经、居然、重新、不断”等
preposition 介词
  总是同其他的词组合在一起，构成介词短语，做定语、状语和补语
  如“把、从、向、朝、为、为了、往、于、比、被、在、对、以、通过、随着、作为”
conjunction 连词
  在句子中往往表示一定的关系，如表示并列、表示选择、表示转折、表示原因等等
  如“那么、所以、并且、或者”等
particle 助词
  附加在词、短语、句子上起辅助作用的词，不能单用，没有实在意义
  结构助词，如“的、地、得、所、似的”
  动态助词，如““着、了、过”
  语气助词，如“啊、吗、呢、吧、呐、呀、了、么、哇”
interjection 叹词
  表示感叹、呼唤、应答的词叫做叹词
onomatopoeia 拟声词
  模拟声音的词
```

现代分词软件（NLPIR）的一些特殊词性标注

```text
multiword expression 多字表达，如“新华社”
time word 时间词
noun of locality 地方名词，如“之内，之中”

punctuation mark 标点符号
prefix 前缀
suffix	后缀
status word 状态词
locative word 定位词
modal particle 语气助词
distinguishing word 区分词
```

pos_list = ['noun', 'verb', 'adjective', 'numeral', 'classifier', 'pronoun', 'preposition', 'multiword expression', 'time word', 'noun of locality']



```bash
python bert_ner.py --do_lower_case=False --do_train=True --do_eval=True --do_test=False --dataset=MSRA-pos --vocab_file=./chinese_L-12_H-768_A-12/vocab_update.txt --bert_config_file=./chinese_L-12_H-768_A-12/bert_config.json --init_checkpoint=chinese_L-12_H-768_A-12/bert_model.ckpt --max_seq_length=128 --train_batch_size=32 --learning_rate=2e-5 --num_train_epochs=10.0 --dropout_rate=0.5 --output_dir=./output/MSRA-pos/bert_bilstm_crf/ --bilstm=True --crf=True --use_pos=True
```