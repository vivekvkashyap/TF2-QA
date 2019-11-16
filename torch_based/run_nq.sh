CUDA_VISIBLE_DEVICES=0,1,2,3,5,7 python run_nq.py \
    --model_type bert \
    --model_name_or_path ../input/pretrained_models/bert-large-uncased-whole-word-masking-finetuned-squad-pytorch_model.bin \
    --config_name ../input/pretrained_models/bert-large-uncased-whole-word-masking-finetuned-squad-config.json \
    --tokenizer_name ../input/bertjointbaseline/vocab-nq.txt \
    --do_train \
    --do_lower_case \
    --fp16 \
    --train_precomputed_file=../input/bertjointbaseline/nq-train.tfrecords-00000-of-00001 \
    --learning_rate 3e-5 \
    --num_train_epochs 2 \
    --max_seq_length 512 \
    --output_dir ../output/models/bert-large-uncased-whole-word-masking-finetuned-squad/ \
    --per_gpu_train_batch_size=4 \
    --save_steps 0.25 --overwrite_output_dir