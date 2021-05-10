# ALLIES Lifelong Learning Machine Translation evaluation campaign

## Description
* Website: <a href='http://statmt.org/wmt21/lifelong-learning-task.html'>LLMT @ WMT 2021</a>
* Evaluation plan: <a href='LifelongLearningMT_EvaluationPlan.pdf'>pdf</a>
* Contact: <a href='https://alliesllmtwmt.slack.com/'>slack</a>

## Installation
### Data
Prepare the data by running the `prepare_data.bash` script:
    ```
    bash prepare_data.bash
    ```

### LLMT system
1. Install the `beat_allies` conda environment with required packages:
    ```
    bash install.bash
    ```

2. Make sure your `beat_allies` conda environment is activated. If not, then run:
    ```
    source activate beat_allies_2021
    ```

3. Before running the experiment for the first time:

    * Check your prefix:
        ```
        beat config show
        ```
        If the `"prefix"` points to the wrong directory, then you should change it using the following command:
        ```
        beat config set "prefix" "<your_absolute_path_to>/allies_llmt_beat/beat"
        ```
    * Change the `root_folder` for each database:
        - `beat/databases/allies_llmt_ende/1.json`
        - `beat/databases/allies_llmt_enfr/1.json`

        to point to the right directory

4. Run experiments
    - `en-fr`
        ```
        beat exp run loicbarrault/loicbarrault/translation_ll_dev/1/translation_ll_dev
        ```
    - `en-de`
        ```
        beat exp run loicbarrault/loicbarrault/translation_ll_dev/2/translation_ll_dev
        ```