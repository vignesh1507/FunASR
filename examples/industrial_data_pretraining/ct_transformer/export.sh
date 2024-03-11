# Copyright FunASR (https://github.com/alibaba-damo-academy/FunASR). All Rights Reserved.
#  MIT License  (https://opensource.org/licenses/MIT)

# method1, inference from model hub
export HYDRA_FULL_ERROR=1


model="damo/punc_ct-transformer_zh-cn-common-vocab272727-pytorch"
model_revision="v2.0.4"

python -m funasr.bin.export \
++model=${model} \
++model_revision=${model_revision} \
++input="https://isv-data.oss-cn-hangzhou.aliyuncs.com/ics/MaaS/ASR/test_audio/vad_example.wav" \
++type="onnx" \
++quantize=false \
++device="cpu"


# method2, inference from local path
model="/Users/zhifu/.cache/modelscope/hub/damo/punc_ct-transformer_zh-cn-common-vocab272727-pytorch"

python -m funasr.bin.export \
++model=${model} \
++input="https://isv-data.oss-cn-hangzhou.aliyuncs.com/ics/MaaS/ASR/test_audio/vad_example.wav" \
++type="onnx" \
++quantize=false \
++device="cpu"