# 🎥 Real-Time Neural Style Transfer with TensorFlow

This project implements **real-time Neural Style Transfer (NST)** using TensorFlow and TensorFlow Hub, applying artistic styles directly to your **live webcam feed**. Inspired by artistic deep learning, it transforms your video stream into styled visual art in real time.

## ✨ Key Features
- 📸 Real-time webcam input with OpenCV
- 🎨 Artistic style transfer using pre-trained TensorFlow Hub models
- ⚡ Fast frame-by-frame style application using GPU (if available)
- 🧪 Minimal dependencies, easy to run

## 🧠 Tech Stack
- Python 3
- TensorFlow 2
- TensorFlow Hub
- OpenCV
- NumPy

## 🧪 How It Works

- Loads a **pre-trained NST model** from TensorFlow Hub.
- Captures live video from your **webcam using OpenCV**.
- Applies the style to each frame in **real time** using TensorFlow operations.
- Displays the output with the applied artistic transformation.


## 🚀 Performance Tips

- Ensure TensorFlow uses your GPU: `tf.test.is_gpu_available()`
- Reduce the webcam resolution for faster processing.
- Style transfer models are lightweight but can still be demanding on low-end systems.


