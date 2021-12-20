# 基于官方sdk
FROM androidsdk/android-29:latest
USER root
# 29源镜像已自带，增加安装android28,30
RUN yes | sdkmanager \
    "platforms;android-30" \
    "platforms;android-28" \
    "build-tools;30.0.3" \
    "build-tools;29.0.3" \
    "build-tools;29.0.2" \
    "build-tools;28.0.3" 
# # 安装android29
# RUN yes | sdkmanager \
#     "platforms;android-29" \
#     "build-tools;29.0.3"
