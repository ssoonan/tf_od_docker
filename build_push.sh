$(aws ecr get-login --no-include-email --region ap-northeast-2)
docker build -t plate-ocr .
docker tag plate-ocr:latest 153768889480.dkr.ecr.ap-northeast-2.amazonaws.com/plate-ocr:latest
docker push 153768889480.dkr.ecr.ap-northeast-2.amazonaws.com/plate-ocr:latest




