# Trainingflutter

A new Flutter project.

## Sử dụng httpClient download ảnh và lưu về bộ nhớ máy (Android hỗ trợ thêm thẻ nhớ: sdcard)

- storage: Android + iOS
    ```aidl
          String dir = (await getApplicationDocumentsDirectory()).path;
    ```
- sdcard: only Android
    ```aidl
          String dir = (await getExternalStorageDirectory()).path + "/Android/Data/com.example.trainingflutter/files";
    ```