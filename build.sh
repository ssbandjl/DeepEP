source ~/pytorch-venv/bin/activate
python3 setup.py clean
rm -rf build
python3 setup.py build
rm -f deep_ep_cpp.cpython-312-x86_64-linux-gnu.so
ln -s build/lib.linux-x86_64-cpython-312/deep_ep_cpp.cpython-312-x86_64-linux-gnu.so

cd ~/project/ai/DeepEP
pip install .
python tests/test_intranode.py

# or current
cd ~/project/ai/DeepEP
export PYTHONPATH=$(pwd)/build/lib.linux-x86_64-cpython-312:$PYTHONPATH
python3 tests/test_intranode.py

or
import sys
sys.path.insert(0, "/root/project/ai/DeepEP/build/lib.linux-x86_64-cpython-312")
import deep_ep

