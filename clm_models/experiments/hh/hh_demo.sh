deepspeed train.py \
  --model_name_or_path EleutherAI/gpt-j-6b \
  --tokenizer_name EleutherAI/gpt-j-6b \
  --dataset_name AlekseyKorshuk/hh-lmgym-demo \
  --train_to_probs False \
  --do_train \
  --do_eval \
  --logging_strategy steps \
  --evaluation_strategy steps \
  --eval_steps 2100 \
  --save_strategy epoch \
  --save_steps 1 \
  --logging_steps 250 \
  --logging_first_step \
  --report_to all \
  --output_dir ./checkpoints/gptj_hh \
  --overwrite_output_dir \
  --per_device_train_batch_size 1 \
  --gradient_accumulation_steps 4 \
  --max_eval_samples 500 \
  --num_train_epochs 4 \
  --eval_first_step False \
  --learning_rate 1e-6 \
  --fp16 \
  --seed 99 \
  --validation_split_percentage 1 \
  --remove_unused_columns False \
  --deepspeed deepspeed_configs/ds_config_soft.json \
  --clean_enabled False \
  --block_size 512
