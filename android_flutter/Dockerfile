# android sdk工具
# FROM cirrusci/android-sdk:tools
FROM androidsdk/android-29:latest
USER root
# 安装android28
RUN yes | sdkmanager \
    "platforms;android-28" \
    "build-tools;28.0.3"
# # 安装android29
# RUN yes | sdkmanager \
#     "platforms;android-29" \
#     "build-tools;29.0.3"

# flutter版本参数
ARG flutter_version

# flutter 环境变量
ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_VERSION=$flutter_version
ENV FLUTTER_ROOT=$FLUTTER_HOME

# 增加设置flutter的国内镜像
ENV FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
ENV PUB_HOSTED_URL=https://pub.flutter-io.cn

# 设置PATH
ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

# 拉取flutter源码
RUN git clone --depth 1 --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME}

RUN yes | flutter doctor --android-licenses \
    && flutter doctor \
    && chown -R root:root ${FLUTTER_HOME}