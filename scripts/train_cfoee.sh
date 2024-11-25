if [ $# == 0 ] 
then
    SEED=21
    LR=5e-5
else
    SEED=$1
    LR=$2
fi

work_path=exps/cfoee/$SEED/$LR
mkdir -p $work_path

python -u engine.py \
    --model_type=paie \
    --dataset_type=cfoee \
    --model_name_or_path=./bart-base-chinese-v2 \
    --role_path=./data_cfoee/dset_meta/description_cf.csv \
    --prompt_path=./data_cfoee/prompts/prompts_cf_full.csv \
    --seed=$SEED \
    --output_dir=$work_path \
    --learning_rate=$LR \
    --max_steps=10000 \
    --max_enc_seq_length 600 \
    --max_prompt_seq_length 250 \
    --bipartite
