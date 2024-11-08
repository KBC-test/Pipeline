#!/bin/bash

# 예시: 파일 백업 스크립트
# 원본 디렉토리와 백업 디렉토리를 설정합니다.
source_dir="/path/to/source"
backup_dir="/path/to/backup"

# 백업 디렉토리가 없으면 생성합니다.
if [ ! -d "$backup_dir" ]; then
	  mkdir -p "$backup_dir"
	    echo "백업 디렉토리를 생성했습니다: $backup_dir"
fi

# 파일들을 원본 디렉토리에서 백업 디렉토리로 복사합니다.
cp -r "$source_dir"/* "$backup_dir"

# 백업 완료 메시지를 출력합니다.
echo "파일이 성공적으로 백업되었습니다: $backup_dir"
