<img src="https://user-images.githubusercontent.com/67560900/130139105-4d37e419-bbed-4c1c-8054-c21994877e20.png" alt="Video">

# Google Summer of Code 2021 [@Tensorflow](https://github.com/tensorflow): Designing and Recreating Tensorflow Lite example NLP apps

>This serves as my final submission for Google Summer of Code 2021 project.

### Mentor:
* Meghna Natraj ([@meghnanatraj](https://github.com/MeghnaNatraj))

## Project Overview
Designing and Recreating new NLP TensorFlow Lite examples. This includes BERT Question and Answering, Text classification using the [TensorFlow Lite Task Library](https://www.tensorflow.org/lite/inference_with_metadata/task_library/overview) which will be showcased in [TensorFlow Lite examples](https://www.tensorflow.org/lite/examples). As a GSoC student, my task was to update the existing Natural Language Processing examples for these 2 tasks to use the TensorFlow Lite Task Library instead of custom code. 


## BERT QA Android Example Application


<img src="https://user-images.githubusercontent.com/67560900/130329896-ebbe26b1-6e4f-4b13-8ca3-06267f66c15a.gif" width="250" alt="Video">

### ⭐️ PR Link - [#327](https://github.com/tensorflow/examples/pull/327)
- Designed & recreated the App to use the latest TFLite Task Library.
- Developed separate Android library modules of Task API and Interpreter for BERT Question Android App & redesigned the app to switch between both APIs using Android product flavors(PR).
- Added documentation, tests, and code-walkthrough to help onboard new users. 
- Added gitignore to the directory for better Contribution workflow.


## BERT QA IOS Example Application

<img src="https://storage.googleapis.com/download.tensorflow.org/models/tflite/screenshots/bertqa_ios_uikit_demo.gif" width="250" alt="Video"> | <img src="https://storage.googleapis.com/download.tensorflow.org/models/tflite/screenshots/bertqa_ios_swiftui_demo.gif" width="250" alt="Video">
-----------------------: | -------------------------:
UIKit version screen cast | SwiftUI version screen cast

### ⭐️ PR Link - [#340](https://github.com/tensorflow/examples/pull/340)

- Designed & recreated the App to use the latest TFLite Task Library both in SwiftUI & UIKit.
- Updated the shellscript to download the recommended latest model with metadata.
- Eliminated the redundant code and UI-components.
- Added & Updated documentation, tests, and code-walkthrough to help onboard new users. 

## Text Classification Android Example Application

<img src="https://www.tensorflow.org/lite/examples/text_classification/images/screenshot.gif" width="250" alt="Video">

### ⭐️ PR Link - [#336](https://github.com/tensorflow/examples/pull/336)

- Recreated the App to use the latest TFLite Task Library 
- Designed the App to switch between both NLClassifier and BertNLClassifier API.
- Added & Updated documentation, tests, and code-walkthrough to help onboard new users.  


## Next Steps
The TFLite model for BertNLClassifier API is not available yet (TFLite team is working on it), when it becomes available it will be integrated into the Text Classification Android Example, and we may also redesign the app to have separate Android library modules of Task API and Interpreter to show both of the implementations.


## Community Contributions

These are the contributions I made, which are not related to my project:

| No. | Description  | PR Link |
| ------------- | ------------- | ------------- |
| 0 | **Resized the super resolution android screenshot**  | [#328]  |
| 1 | **App screenshot added to Image classification android example** | [#329]  |
| 2 | **Changed readme title of text classification IOS sample**  | [#334]  |
| 3 | **Added App Screenshot to Object Detection Android example**  | [#335]  |
| 4 | **Updated Text Classification Android readme with latest links**  | [#337]  |



## Acknowledgements

My Google Summer of Code Experience was awesome ❤️ and a large part of this great experience was the good mentoring of [Meghna Natraj](https://github.com/MeghnaNatraj), [George Soloupis](https://github.com/farmaker47), [Margaret Maynard-Reid](https://github.com/margaretmz),  [Lu Wang](https://github.com/lu-wang-g), [Le Viet Gia Khanh](https://github.com/khanhlvg), [Tian Tian](https://github.com/lintian06) and [TensorFlow Team](https://www.tensorflow.org/).

I thank them for their constant guidance, code reviews, timely feedback, help and most importantly, for their dedicated advice and encouragement throughout GSoC. I would definitely love to contribute more in the future to the TensorFlow.

> Medium Blog is coming soon!

 ### 📫 Connect with me
 <img align="center" src="https://raw.githubusercontent.com/ShahriarShafin/ShahriarShafin/main/Assets/handshake.gif" height="32px">

 
|<a href="mailto:iamsunitroy03@gmail.com"><img src="https://image.flaticon.com/icons/svg/281/281769.svg" width="40"></a>|<a href="https://www.linkedin.com/in/sunit-roy/"><img src="https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Linkedin_unofficial_colored_svg-128.png" width="40"></a>|<a href="https://twitter.com/HeySunit"><img src="https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Twitter3_colored_svg-128.png" width="40"></a>|<a href="https://sunitroy.medium.com/"><img src="https://user-images.githubusercontent.com/67560900/109533536-57d87a80-7ae0-11eb-8602-d312a0cb0b0e.png" width="45"></a>|<a href="https://www.youtube.com/c/SunitRoy"><img src="https://user-images.githubusercontent.com/67560900/124399599-ef253700-dd39-11eb-8b81-68807fdc3541.png" width="45"></a>|
|--|--|--|--|--|


[#328]:https://github.com/tensorflow/examples/pull/328
[#329]:https://github.com/tensorflow/examples/pull/329
[#334]:https://github.com/tensorflow/examples/pull/334
[#335]:https://github.com/tensorflow/examples/pull/335
[#337]:https://github.com/tensorflow/examples/pull/337
