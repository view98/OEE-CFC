# OEE-CFC
This is the OEE-CFC corpus of the paper [OEE-CFC: A Dataset for Open Event Extraction from Chinese Financial Commentary] 
The experimental code is using the PAIE of the paper [Prompt for Extraction? PAIE: Prompting Argument Interaction for
Event Argument Extraction]. ACL'2022.


## Quick links

* [Preparation](#preparation)
  * [Environment](#environment)
  * [Data](#data)
* [Run the model](#run-lm-bff)
  * [Quick start](#quick-start)
  * [Experiments with multiple runs](#experiments-with-multiple-runs)
  * [Without bipartite loss](#without-bipartite-loss)
  * [Joint/Single prompts](#joint-prompt-or-not)
  * [Manual/Concat/Soft prompts](#manual-prompt-or-others)
  * [Few-shot setting](#few-shot-setting)
* [Citation](#citation)

## Preparation

### Environment
To run our code, please install all the dependency packages by using the following command:

```
pip install -r requirements.txt
```

### Data
We conduct experiments on four common datasets: OEE-CFC, ACE05, RAMS and WIKIEVENTS.

Please make sure your data folder structure as below.
```bash
data
  ├── OEE-CFC
  │   ├── train.jsonlines
  │   ├── dev.jsonlines
  │   └── test.jsonlines
  ├── ace_eeqa
  │   ├── train_convert.json
  │   ├── dev_convert.json
  │   └── test_convert.json
  ├── RAMS_1.0
  │   └── data
  │       ├── train.jsonlines
  │       ├── dev.jsonlines
  │       └── test.jsonlines
  ├── WikiEvent
  │   └── data
  │       ├── train.jsonl
  │       ├── dev.jsonl
  │       └── test.jsonl
  ├── prompts
  │   ├── prompts_ace_full.csv
  │   ├── prompts_wikievent_full.csv
  │   └── prompts_rams_full.csv
  └── dset_meta
      ├── description_ace.csv
      ├── description_rams.csv
      └── description_wikievent.csv
```

## Run the model
You can run PAIE model according to the paper [Prompt for Extraction? PAIE: Prompting Argument Interaction for
Event Argument Extraction](https://aclanthology.org/2022.acl-long.466/#:~:text=On%20the%20one%20hand%2C%20PAIE,input%20texts%20for%20each%20role.). ACL'2022

## Citation
Please cite our paper if you use OEE-CFC in your work:
```bibtex
@inproceedings{wan2024oee-cfc,
    title = "{OEE-CFC}：A dataset for open event extraction from {Chinese} financial commentary",
    author = "Wan, Qizhi  and
      Wa, Changxuan  and
      Hu, Rong  and
      Liu, Dexi  and
      Xu, Wenwu  and
      Xu, Kang  and
      Zou, Meihua and
      Liu, Tao and
      Yang, Jie and
      Xiong Zhenwei",
    booktitle = "Findings of the Association for Computational Linguistics: EMNLP 2024",
    month = may,
    year = "2024",
    address = "Dublin, Ireland",
    publisher = "Association for Computational Linguistics",
    url = "https://aclanthology.org/2022.acl-long.466",
    doi = "10.18653/v1/2022.acl-long.466",
    pages = "6759--6774",
}
```
