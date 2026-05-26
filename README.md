# Порт StaticJinjaPlus для Docker

Docker-образы для генератора статических сайтов [StaticJinjaPlus](https://github.com/MrDave/StaticJinjaPlus).

## Доступные теги на Docker Hub

| Тег | Базовый образ | Версия |
|-----|--------------|--------|
| `latest` | ubuntu | 0.1.1 |
| `slim` | python:slim | 0.1.1 |
| `0.1.1` | ubuntu | 0.1.1 |
| `0.1.1-slim` | python:slim | 0.1.1 |
| `0.1.0` | ubuntu | 0.1.0 |
| `0.1.0-slim` | python:slim | 0.1.0 |
| `develop` | ubuntu | ветка main |
| `develop-slim` | python:slim | ветка main |

## Скачать образ

```bash
docker pull pavelwell/static-jinja-plus:latest
```

## Использование

Положите шаблоны в папку `templates`, затем запустите генерацию.

**Linux/Mac:**
```bash
docker run --rm \
  -v ./templates:/app/templates \
  -v ./build:/app/build \
  pavelwell/static-jinja-plus:latest \
  python3 main.py
```

**Windows PowerShell:**
```powershell
docker run --rm `
  -v ${PWD}/templates:/app/templates `
  -v ${PWD}/build:/app/build `
  pavelwell/static-jinja-plus:latest `
  python3 main.py
```

Готовый сайт появится в папке `build`.

## Сборка образа вручную

```bash
docker build -t pavelwell/static-jinja-plus:latest .
```
