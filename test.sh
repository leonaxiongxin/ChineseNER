# using bert-bilstm-crf
# loop to find suitable epoch
epoch=1
while [ $epoch -le 10 ]
do
     let checkpoint=`expr $epoch \* 1583`
     echo "Looping to checkpoint=$checkpoint"
     python bert_ner.py\
            --do_lower_case=False \
            --do_train=False   \
            --do_eval=False   \
            --do_test=True \
            --dataset=ywevents-pos   \
            --vocab_file=./chinese_L-12_H-768_A-12/vocab_update.txt   \
            --bert_config_file=./chinese_L-12_H-768_A-12/bert_config.json   \
            --init_checkpoint=./output/MSRA-pos/bert_bilstm_crf/model.ckpt-$checkpoint   \
            --max_seq_length=128   \
            --train_batch_size=32   \
            --learning_rate=2e-5   \
            --num_train_epochs=$epoch   \
            --dropout_rate=0.5   \
            --output_dir=./output/ywevents-pos/bert_bilstm_crf/   \
            --bilstm=True   \
            --crf=True   \
            --use_pos=True
     ((epoch++))
 done
