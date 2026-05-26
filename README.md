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

## Использование

Сгенерировать статический сайт из шаблонов:

```bash
docker run --rm \
  -v ./templates:/app/templates \
  -v ./build:/app/build \
  pavelwell/static-jinja-plus:latest \
  python3 main.py
```

## Сборка образа вручную

```bash
# Собрать последнюю версию
docker build -t pavelwell/static-jinja-plus:latest .

# Собрать конкретную версию
docker build --build-arg SJP_VERSION=0.1.0 -t pavelwell/static-jinja-plus:0.1.0 .
```
