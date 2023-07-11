CUDA_VISIBLE_DEVICES=0 python src/train_sft.py \
    --model_name_or_path your model path \
    --use_v2 \
    --do_train \
    --dataset zhenhuan \
    --finetuning_type lora \
    --lora_rank 8 \
    --output_dir ./output/lora \
    --per_device_train_batch_size 4 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 4.0 \
    --fp16