NCCL_NET_GDR_LEVEL=2\
NCCL_P2P_LEVEL=5\
TORCH_DISTRIBUTED_DEBUG=INFO\
TORCHELASTIC_ERROR_FILE=../error.json\
OMP_NUM_THREADS=1 HF_HOME=../.cache\
HF_ENDPOINT=https://hf-mirror.com\
torchrun --nproc-per-node gpu --log-dir ../logs train_llm.py -d tatsu-lab/alpaca -m meta-llama/Llama-2-7b-hf -v -e exp4 -b 16 -s 4096
