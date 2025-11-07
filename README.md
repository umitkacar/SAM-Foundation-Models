# SAM Foundation Models - Comprehensive Resource Collection

A curated collection of Segment Anything Model (SAM) resources, implementations, optimizations, and applications. Updated with 2024-2025 trends and state-of-the-art developments.

## Table of Contents
- [Official Models & Latest Updates](#official-models--latest-updates)
- [SAM 2 & Video Segmentation](#sam-2--video-segmentation)
- [Optimization & Mobile Deployment](#optimization--mobile-deployment)
- [Academic Research & Surveys](#academic-research--surveys)
- [Domain-Specific Applications](#domain-specific-applications)
- [Training & Fine-Tuning](#training--fine-tuning)
- [Production Deployment & Tools](#production-deployment--tools)
- [SAM Extensions & Variants](#sam-extensions--variants)
- [Implementation Libraries](#implementation-libraries)
- [Datasets & Benchmarks](#datasets--benchmarks)

---

## Official Models & Latest Updates

### Meta's Official Repositories
- **[SAM 2](https://github.com/facebookresearch/sam2)** - Official SAM 2 implementation (Released July 2024, Updated 2.1 Sept 2024)
  - 🔥 **SAM 2.1** - Latest checkpoint with stronger performance (Sept 30, 2024)
  - 3x fewer interactions, 6x faster than original SAM
  - Real-time video segmentation at 44 FPS
  - Apache 2.0 License
  - [Meta AI Blog](https://ai.meta.com/blog/segment-anything-2/)
  - [Research Paper](https://ai.meta.com/research/publications/sam-2-segment-anything-in-images-and-videos/) - **ICLR 2025 Best Paper Honorable Mention**
  - [ArXiv: 2408.00714](https://arxiv.org/abs/2408.00714)

- **[Segment Anything](https://github.com/facebookresearch/segment-anything)** - Original SAM (April 2023)
  - [Official Website](https://segment-anything.com/)
  - [ArXiv: 2304.02643](https://arxiv.org/abs/2304.02643)

### Integration & Documentation
- **[SAM 2 on Ultralytics](https://docs.ultralytics.com/models/sam-2/)** - Production-ready integration
- **[SAM 2 on HuggingFace](https://huggingface.co/facebook/sam2-hiera-large)** - Model hub with 182K+ downloads/month
- **[Amazon SageMaker JumpStart](https://ai.meta.com/blog/segment-anything-2/)** - SAM 2.1 deployment (Feb 2025)

---

## SAM 2 & Video Segmentation

### Advanced Video Segmentation (2024-2025)
- **[SAM2Long](https://github.com/Mark12Ding/SAM2Long)** - 🌟 ICCV 2025
  - Training-free memory tree for long video segmentation
  - Addresses error accumulation in occlusion/reappearance scenarios
  - [Project Page](https://mark12ding.github.io/project/SAM2Long/)

- **[Grounded-SAM-2](https://github.com/IDEA-Research/Grounded-SAM-2)** - 🔥 Multi-modal integration
  - Combines Grounding DINO, Florence-2, and SAM 2
  - Ground and track anything in videos
  - Object detection + segmentation + tracking

- **[AL-Ref-SAM2](https://github.com/appletea233/AL-Ref-SAM2)** - AAAI 2025
  - Audio-Language-Referenced video object segmentation
  - Training-free paradigm with GPT temporal-spatial reasoning

- **[Surgical SAM 2](https://github.com/jinlab-imvr/Surgical-SAM-2)** - NeurIPS 2024 Workshop
  - Real-time surgical segmentation at 86 FPS (3x faster)
  - Resource-constrained environments

### Classic Video & Tracking
- **[Segment-and-Track-Anything](https://github.com/z-x-yang/Segment-and-Track-Anything)** (2023)
- **[RAP-SAM](https://github.com/xushilin1/rap-sam)** - Real-Time All-Purpose on Video

---

## Optimization & Mobile Deployment

### Edge & Mobile Optimized Models
- **[EdgeSAM](https://github.com/chongzhou96/EdgeSAM)** - 🚀 First SAM running at 30+ FPS on mobile
  - [ArXiv: 2312.06660](https://arxiv.org/abs/2312.06660)
  - Prompt-in-the-loop distillation
  - Runs on iPhone 14
  - Purely CNN-based architecture

- **[MobileSAM](https://github.com/ChaoningZhang/MobileSAM)** - Lightweight SAM variant
  - 60x smaller, 40x faster than original SAM
  - Comparable performance on COCO

- **[EfficientSAM](https://github.com/yformer/EfficientSAM)** - ⚡ Best accuracy-efficiency trade-off
  - [Project Page](https://yformer.github.io/efficient-sam/)
  - [ArXiv: 2312.00863](https://arxiv.org/html/2312.00863v1)
  - **Performance:** 6.5 AP better than FastSAM on COCO
  - **Model Size:** EfficientSAM-Ti: 9.8M params vs FastSAM: 68M params
  - 10-20 images/sec throughput
  - [Grounded-SAM EfficientSAM](https://github.com/IDEA-Research/Grounded-Segment-Anything/tree/main/EfficientSAM)

- **[FastSAM](https://github.com/CASIA-IVA-Lab/FastSAM)** - Maximum throughput
  - ~100 images/second
  - Prompt-free segmentation
  - [Ultralytics Docs](https://docs.ultralytics.com/models/fast-sam/)

- **[TinySAM](https://github.com/xinghaochen/TinySAM)** - Ultra-compact SAM
- **[RepViT-SAM](https://github.com/THU-MIG/RepViT)** - Vision Transformer optimization

### Optimization Techniques & Resources
- **[Awesome-Efficient-Segment-Anything](https://github.com/czg1225/Awesome-Efficient-Segment-Anything)** - Comprehensive survey
- **[ArXiv Survey: On Efficient Variants of SAM](https://arxiv.org/html/2410.04960v1)** (2024)

### Quality Enhancement
- **[HQ-SAM](https://github.com/SysCV/sam-hq)** - NeurIPS 2023, High-quality masks
  - [Osprey](https://github.com/CircleRadon/Osprey) - Enhanced version

---

## Academic Research & Surveys

### Comprehensive Surveys (2024-2025)
- **[A Survey on SAM: Vision Foundation Model Meets Prompt Engineering](https://arxiv.org/abs/2306.06211)** - 🌟 Most comprehensive
  - Updated: October 2024
  - Covers SAM & SAM 2
  - Papers: April 2023 - September 2024

- **[A Comprehensive Survey on SAM for Vision and Beyond](https://arxiv.org/abs/2305.08196)**
  - Foundation model analysis

- **[Awesome-Segment-Anything](https://github.com/liliu-avril/Awesome-Segment-Anything)** - First comprehensive survey repo
  - [2024 Paper List](https://github.com/liliu-avril/Awesome-Segment-Anything/blob/main/Paper_List/paper_list_2024.md)
  - Continuously updated collection

- **[Awesome-SAM2](https://github.com/GuoleiSun/Awesome-SAM2)** - SAM 2 specific resources
  - Papers, codes, slides about SAM 2

- **[Segment Anything for Video: Past to Future](https://arxiv.org/abs/2507.22792)** (2025)
  - Video object segmentation and tracking review

### Key Research Papers
- **Papers with Code:** [Segment Anything](https://paperswithcode.com/paper/segment-anything)

---

## Domain-Specific Applications

### Medical Imaging (2024-2025)
- **[SAM4MIS](https://github.com/YichiZhang98/SAM4MIS)** - CIBM 2024 🏥
  - Medical image segmentation project summary
  - 15+ benchmarks, 26+ tasks
  - Mammography, MRI, retinal vessels, ultrasound

- **[SAM-Med3D](https://link.springer.com/chapter/10.1007/978-3-031-91721-9_4)** - General-purpose 3D medical segmentation
  - SA-Med3D-140K dataset: 22K 3D images, 143K masks
  - Multi-modal support (CT, MRI, etc.)

- **[Interactive 3D Medical Image Segmentation with SAM 2](https://arxiv.org/html/2408.02635v2)** (2024)
  - Zero-shot 3D CT scan segmentation
  - [JMIR AI: Using SAM 2 for 3D Medical Imaging](https://ai.jmir.org/2025/1/e72109/)

- **[ProtoSAM-3D](https://pubmed.ncbi.nlm.nih.gov/39919534/)** - Volumetric medical imaging
- **[AutoProSAM](https://openaccess.thecvf.com/content/WACV2025/papers/Li_AutoProSAM_Automated_Prompting_SAM_for_3D_Multi-Organ_Segmentation_WACV_2025_paper.pdf)** - WACV 2025, 3D multi-organ segmentation
- **[Medical Image Analysis using SAM-Med2D](https://bmcmedimaging.biomedcentral.com/articles/10.1186/s12880-024-01401-6)** - BMC 2024
- **[Review: SAM for Medical Image Analysis](https://pubmed.ncbi.nlm.nih.gov/39673905/)** - 2025 comprehensive review

### Remote Sensing & Agriculture
- **[SAMGeo](https://cfp.scipy.org/2024/talk/ZPBYF7/)** - SciPy 2024 presentation
  - Automated remote sensing segmentation
  - Open-source package for geospatial data

- **[SAM for Crop Mapping](https://www.mdpi.com/2072-4292/16/9/1505)** - MDPI 2024
  - Automated sample generation for agriculture
  - Medium-resolution satellite imagery (Sentinel-2, Landsat-8)

- **[Can SAM Recognize Crops?](https://arxiv.org/html/2311.15138v2)** - ArXiv 2023
  - Zero-shot crop-type mapping evaluation
  - Precision agriculture applications

- **[ESRI ArcGIS Blog: SAM for Image Segmentation](https://www.esri.com/arcgis-blog/products/arcgis-pro/geoai/revolutionizing-image-segmentation-with-sam-segment-anything-model/)**

### Autonomous Driving & Robotics
- **[SAMUNet](https://www.sciencedirect.com/science/article/abs/pii/S0262885625002914)** - 2025
  - Shape-aware 3D object detection
  - Pillar-based autonomous driving

- **[7 State-of-the-Art Point Cloud Models](https://segments.ai/blog/7-state-of-the-art-3d-point-cloud-models-for-autonomous-driving/)**

### Industrial Quality Control
- **[Weld Defect Detection with SAM](https://www.mdpi.com/1424-8220/25/1/277)** - MDPI Sensors 2025
  - Ultrasonic B-scan image analysis
  - F1-score: 0.940 for oil & gas pipelines

- **[Armature Defect Detection with YOLO11+SAM](https://www.mdpi.com/2227-9717/13/2/532)** - MDPI Processes 2025
  - Micro-vibration motor quality control
  - 90%+ quantitative assessment accuracy

### Specialized Domains
- **[Depth-Anything-V2](https://huggingface.co/spaces/depth-anything/Depth-Anything-V2)** - Depth estimation
- **[gaussian-grouping](https://github.com/lkeab/gaussian-grouping)** - 3D Gaussian splatting
- **[garfield](https://github.com/chungmin99/garfield)** - 3D reconstruction
- **[MeshAnything](https://github.com/buaacyw/MeshAnything)** - 3D mesh generation
- **[SA4D](https://github.com/hustvl/SA4D)** - 4D scene understanding
- **[OCR-SAM](https://github.com/yeungchenwa/OCR-SAM)** - Optical character recognition
- **[FOOD-SAM](https://github.com/jamesjg/foodsam)** - Food segmentation
- **[SAM-Deblur](https://github.com/hplqaq/sam-deblur)** - Image deblurring

---

## Training & Fine-Tuning

### Fine-Tuning Frameworks
- **[finetune-SAM](https://github.com/mazurowski-lab/finetune-SAM)** - Official medical imaging fine-tuning
  - Automatic/prompt-based settings
  - Multi-class support
  - Updated May-June 2024

- **[SAM-fine-tune](https://github.com/WangRongsheng/SAM-fine-tune)** - 🌌 Fine-tune SAM on any task
  - Comprehensive LoRA implementation

- **[lora_sam](https://github.com/michael11albrecht/lora_sam)** - HuggingFace Transformers + LoRA
  - Parameter-efficient fine-tuning

- **[SAMed](https://github.com/hitachinsk/SAMed)** - Medical image customization
  - LoRA finetuning for image encoder, prompt encoder, mask decoder

- **[med-sam-brain](https://github.com/vpulab/med-sam-brain)** - Brain tumor segmentation
  - PEFT through LoRA blocks for mp-MRI

- **[Sam_LoRA](https://github.com/MathieuNlp/Sam_LoRA)** - Ring segmentation example

### Resources & Tutorials
- **[Labellerr: SAM Fine-Tuning Using LoRA](https://www.labellerr.com/blog/sam-fine-tuning-using-lora/)** - One-shot learning
- **[Encord: Fine-Tune SAM](https://encord.com/blog/learn-how-to-fine-tune-the-segment-anything-model-sam/)** - Comprehensive guide
- **[Conv-LoRA](https://openreview.net/forum?id=ezscMer8L0)** - OpenReview
  - Lightweight convolutional parameters + LoRA
- **[Medium: Parameter-Efficient Fine-Tuning](https://medium.com/@nischaydiwan1026/exploring-parameter-efficient-fine-tuning-for-foundation-models-in-image-segmentation-49a7701a012a)**

---

## Production Deployment & Tools

### Annotation Tools with SAM Integration
- **[CVAT](https://www.cvat.ai)** - ✨ SAM 2 video annotation (2024)
  - [CVAT + SAM 2 Blog](https://www.cvat.ai/resources/blog/video-annotation-sam-2)
  - [SAM 2 Image Segmentation in CVAT](https://www.cvat.ai/resources/blog/meta-segment-anything-model-v2-is-now-available-in-cvat-ai)
  - Semi-automatic video annotation
  - 44 FPS real-time processing

- **[Label Studio](https://labelstud.io/blog/segment-anything-in-hugging-face-spaces/)** - Cloud-native ML pipelines
  - HuggingFace Spaces integration
  - Multi-modal support (text, audio, time-series)
  - SSO & RBAC

- **[AnyLabeling](https://github.com/vietanhdev/anylabeling)** - Desktop labeling tool
- **[SALT](https://github.com/anuragxel/salt)** - Segment Anything Labelling Tool

### Deployment Platforms
- **[HuggingFace Transformers](https://huggingface.co/docs/transformers/en/model_doc/sam)** - Official integration
  - [Models Hub](https://huggingface.co/models?other=sam)

- **[Jozu MLOps: HuggingFace to Production](https://jozu.com/blog/from-hugging-face-to-production-deploying-segment-anything-sam-with-jozus-model-import-feature/)**
  - Model import feature guide

### Export & Conversion Tools
- **[SAM2ONNX](https://github.com/DmitryYurov/SAM2ONNX)** - SAM 2 ONNX converter
- **[sam_onnx_full_export](https://github.com/AndreyGermanov/sam_onnx_full_export)** - Complete ONNX export
- **[sam4onnx](https://github.com/PINTO0309/sam4onnx)** - ONNX optimization
- **[samexporter](https://github.com/vietanhdev/samexporter)** - Multi-format exporter

---

## SAM Extensions & Variants

### Grounding & Multi-Modal
- **[Grounded-Segment-Anything](https://github.com/IDEA-Research/Grounded-Segment-Anything)** - 🔥 Most popular
  - Grounding DINO + SAM + Stable Diffusion
  - Detect, Segment, Generate anything
  - HuggingFace support

- **[RobustSAM](https://github.com/robustsam/RobustSAM)** - CVPR 2024
  - Adversarial robustness

- **[Personalize-SAM](https://github.com/ZrrSkywalker/Personalize-SAM)** - DreamBooth integration
  - [Transformers Tutorial](https://github.com/NielsRogge/Transformers-Tutorials/tree/master/PerSAM)
  - [Mask R-CNN vs PerSAM](https://encord.com/blog/mask-rcnn-vs-per-sam/)

- **[GroundingDINO](https://github.com/IDEA-Research/GroundingDINO)** - Language-guided detection
- **[RAM](https://github.com/xinyu1205/recognize-anything/tree/main)** - Recognize Anything Model
- **[CLIP](https://github.com/OpenAI/CLIP)** - Vision-Language foundation

### Full Pipeline Solutions
- **[SEEM](https://github.com/UX-Decoder/Segment-Everything-Everywhere-All-At-Once)** - Segment Everything Everywhere
- **[Full-SAM](https://github.com/ByungKwanLee/Full-Segment-Anything)** - Complete segmentation pipeline
- **[AUTODISTILL](https://github.com/autodistill/autodistill)** - Auto dataset labeling

### Special Purpose
- **[ClickSEG](https://github.com/XavierCHEN34/ClickSEG/)** - Click-based segmentation
- **[Image2Paragraph](https://github.com/showlab/Image2Paragraph)** - Image captioning

---

## "Anything" Projects Ecosystem

### 2024 Projects
- **[ReplaceAnything](https://github.com/AIGCDesignGroup/ReplaceAnything)** - Object replacement
- **[Depth-Anything](https://github.com/LiheYoung/Depth-Anything)** - Monocular depth estimation
- **[OMG-Seg](https://github.com/lxtgh/omg-seg)** - Open-world segmentation
- **[OVSAM](https://github.com/harboryuan/ovsam)** - Open-vocabulary SAM

### 2023 Classics
- **[Matting-Anything](https://github.com/shi-labs/matting-anything)** - Image matting
- **[Inpaint-Anything](https://github.com/geekyutao/Inpaint-Anything)** - Image inpainting
- **[Painter](https://github.com/baaivision/Painter)** - Generative models
- **[EditAnything](https://github.com/sail-sg/EditAnything)** - Image editing
- **[Prompt-Segment-Anything](https://github.com/RockeyCoss/Prompt-Segment-Anything)** - Prompt engineering
- **[Segment-Any-Anomaly](https://github.com/caoyunkang/Segment-Any-Anomaly)** - Anomaly detection
- **[GroundedSAM-zero-shot-anomaly-detection](https://github.com/caoyunkang/GroundedSAM-zero-shot-anomaly-detection)**
- **[Semantic-Segment-Anything](https://github.com/fudan-zvg/Semantic-Segment-Anything)** - Semantic segmentation
- **[detect-anyshadow](https://github.com/harrytea/detect-anyshadow)** - Shadow detection
- **[Caption-Anything](https://github.com/ttengwang/Caption-Anything)** - Image captioning
- **[ShowAnything](https://github.com/showlab/ShowAnything)** - Visualization
- **[Count-Anything](https://github.com/ylqi/Count-Anything)** - Object counting
- **[Anything-3D](https://github.com/Anything-of-anything/Anything-3D)** - 3D reconstruction

---

## Implementation Libraries

### C++ Implementations
- **[segment-anything-cpp-wrapper](https://github.com/dinglufe/segment-anything-cpp-wrapper)** - Pure C++
- **[sam-cpp-macos](https://github.com/ryouchinsa/sam-cpp-macos)** - Extended macOS
- **[sam.cpp](https://github.com/YavorGIvanov/sam.cpp)** - GGML-based
- **[SegmentAnything-OnnxRunner](https://github.com/OroChippw/SegmentAnything-OnnxRunner)** - ONNX C++
- **[SAM-ONNX-AX650-CPP](https://github.com/ZHEQIUSHUI/SAM-ONNX-AX650-CPP)** - QT + Lama inpaint

### Other Languages
- **[SamSharp](https://github.com/thislookshard/SamSharp)** - C# implementation
- **[sam_onnx_rust](https://github.com/AndreyGermanov/sam_onnx_rust)** - Rust
- **[Libtorch-MobileSAM-Example](https://github.com/cyrillkuettel/Libtorch-MobileSAM-Example)** - LibTorch

### Mobile Runtimes
- **[EdgeSAM-MNN](https://github.com/slz929/EdgeSAM-MNN)** - MNN framework
- **[mnn-segment-anything](https://github.com/wangzhaode/mnn-segment-anything)** - Mobile neural network

### ComfyUI Integration
- **[comfyui_segment_anything](https://github.com/storyicon/comfyui_segment_anything)** - SAM nodes for ComfyUI

---

## Datasets & Benchmarks

### Official Datasets
- **[SA-1B Dataset](https://ai.meta.com/datasets/segment-anything/)** - 11M images, 1B+ masks
  - Largest segmentation dataset
  - Open world images

- **[SA-V Dataset](https://encord.com/blog/segment-anything-model-2-sam-2/)** - Video segmentation (2024)
  - 51K videos from 47 countries
  - 600K+ mask annotations
  - 240p to 4K resolution
  - 4s to 138s duration

### Benchmark Performance
SAM 2 evaluated on:
- **DAVIS** - Video object segmentation
- **MOSE** - Multi-object segmentation
- **LVOS** - Long-term video segmentation
- **YouTube-VOS** - Large-scale video dataset
- **COCO** - Common objects in context
- **LVIS** - Large vocabulary instance segmentation

---

## Educational Resources & Tutorials

### Comprehensive Guides
- **[Encord: Meta AI's SAM Explained](https://encord.com/blog/segment-anything-model-explained/)** - Ultimate guide
- **[Roboflow: What is SAM?](https://blog.roboflow.com/segment-anything-breakdown/)** - Breakdown
- **[Roboflow: How to Use SAM](https://blog.roboflow.com/how-to-use-segment-anything-model-sam/)** - Practical tutorial
- **[V7 Labs: SAM Intro & Use Cases](https://www.v7labs.com/blog/segment-anything-model-sam)** - Comprehensive overview
- **[LabelVisor: Hands-on Guide](https://www.labelvisor.com/effortless-segmentation-in-seconds-a-hands-on-guide-to-using-segment-anything/)**
- **[LabelVisor: Community Resources](https://www.labelvisor.com/building-a-community-resources-and-tips-for-segment-anything-users/)**

### Performance & Optimization
- **[Efficient-SAM vs SAM](https://medium.com/@nandinilreddy/efficient-sam-vs-sam-920879408467)** - Medium
- **[Fast Faster SAM](https://someshfengde.medium.com/revolutionizing-object-segmentation-fast-faster-sam-673022615849)** - Medium
- **[Faster SAM for Mobile](https://ar5iv.labs.arxiv.org/html/2306.14289)** - ArXiv
- **[Lightly: SAM and Friends](https://www.lightly.ai/blog/segment-anything-model-and-friends)** - Model comparison

### YouTube Channels
- **[Rob Mulla](https://www.youtube.com/@robmulla)** - ML tutorials
- **[ArjanCodes](https://www.youtube.com/@ArjanCodes/videos)** - Software engineering

---

## Additional Resources

### Detection Backbones
- **[ViTDet](https://github.com/ViTAE-Transformer/ViTDet)** - Vision Transformer detection
- **[Detic](https://github.com/facebookresearch/Detic)** - Detector with image classes
- **[RepViT](https://github.com/THU-MIG/RepViT)** - Efficient ViT

### Other Tools
- **[MaskFreeVIS](https://github.com/SysCV/MaskFreeVIS)** - Video instance segmentation
- **[clip-interrogator](https://github.com/pharmapsychotic/clip-interrogator)** - Reverse CLIP

### Model Zoos
- **[PaddleSeg](https://github.com/PaddlePaddle/PaddleSeg)** - PaddlePaddle segmentation
- **[PINTO_model_zoo](https://github.com/PINTO0309/PINTO_model_zoo)** - Optimized models

### Enhancement Tools
- **[NAFNet](https://github.com/megvii-research/NAFNet)** - Deblurring

### Framework Documentation
- **[Detectron2 Benchmarks](https://detectron2.readthedocs.io/en/latest/notes/benchmarks.html)**

---

## Key Insights & Trends (2024-2025)

### Major Developments
1. **SAM 2.1 Release** (Sept 2024) - Stronger performance on similar objects & occlusions
2. **ICLR 2025** - SAM 2 receives Best Paper Honorable Mention
3. **Production Integration** - Amazon SageMaker JumpStart support (Feb 2025)
4. **Medical Imaging Breakthrough** - 15+ benchmarks, 26+ medical tasks
5. **Mobile-First** - EdgeSAM achieves 30+ FPS on mobile devices
6. **Video Segmentation** - Real-time 44 FPS processing
7. **Industrial Adoption** - Quality control, weld inspection, defect detection

### Performance Benchmarks
- **Speed:** 6x faster than original SAM (SAM 2)
- **Efficiency:** 3x fewer interactions (SAM 2)
- **Mobile:** 30+ FPS on iPhone 14 (EdgeSAM)
- **Real-time:** 86 FPS surgical segmentation (Surgical SAM 2)
- **Accuracy:** F1-score 0.940 industrial defect detection

### Research Trends
- Training-free adaptation methods
- LoRA-based fine-tuning
- Multi-modal integration (audio, language, vision)
- 3D & 4D scene understanding
- Zero-shot domain transfer
- Edge deployment optimization

---

## Contributing

This repository is continuously updated with the latest SAM developments. Contributions are welcome! Please ensure:
- Resources are from reputable sources
- Links are active and high-quality
- Descriptions are accurate and concise
- Proper categorization

## Citation

If you use this resource collection, please cite the original SAM papers:

```bibtex
@article{kirillov2023segment,
  title={Segment Anything},
  author={Kirillov, Alexander and Mintun, Eric and Ravi, Nikhila and Mao, Hanzi and Rolland, Chloe and Gustafson, Laura and Xiao, Tete and Whitehead, Spencer and Berg, Alexander C. and Lo, Wan-Yen and Doll{\'a}r, Piotr and Girshick, Ross},
  journal={arXiv:2304.02643},
  year={2023}
}

@article{ravi2024sam2,
  title={SAM 2: Segment Anything in Images and Videos},
  author={Ravi, Nikhila and Gabeur, Valentin and Hu, Yuan-Ting and Hu, Ronghang and Ryali, Chaitanya and Ma, Tengyu and Khedr, Haitham and R{\"a}dle, Roman and Rolland, Chloe and Gustafson, Laura and Mintun, Eric and Pan, Junting and Alwala, Kalyan Vasudev and Carion, Nicolas and Wu, Chao-Yuan and Girshick, Ross and Doll{\'a}r, Piotr and Feichtenhofer, Christoph},
  journal={arXiv:2408.00714},
  year={2024}
}
```

---

**Last Updated:** January 2025
**Maintainer:** Community-driven
**License:** Collection of resources with individual licenses

*This is a living document. Star ⭐ and watch 👀 for updates!*
