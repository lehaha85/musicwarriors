#!/bin/bash

echo "🔧 Установка зависимостей для MusicWarriors..."

# Установка необходимых библиотек
pip install -r requirements.txt

# Клонирование моделей Bark и RVC
echo "📥 Клонирование Bark..."
git clone https://github.com/suno-ai/bark.git || echo "Bark уже загружен"
cd bark && pip install -r requirements.txt && cd ..

echo "📥 Клонирование RVC..."
git clone https://github.com/innnky/so-vits-svc-fork.git || echo "RVC уже загружен"
cd so-vits-svc-fork && pip install -r requirements.txt && cd ..

echo "✅ Установка завершена."