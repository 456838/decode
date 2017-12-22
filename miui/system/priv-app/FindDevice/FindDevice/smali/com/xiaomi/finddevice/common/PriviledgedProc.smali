.class public Lcom/xiaomi/finddevice/common/PriviledgedProc;
.super Ljava/lang/Object;
.source "PriviledgedProc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "fdpp_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 182
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeAddService(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 181
    :cond_2
    return-void
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 37
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "path == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    .line 39
    .local v0, "rst":[Z
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeExists(Ljava/lang/String;[Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 42
    :cond_1
    aget-boolean v1, v0, v2

    return v1
.end method

.method private static native getErrorMessage(I)Ljava/lang/String;
.end method

.method private static native getLastErrorCode()I
.end method

.method public static getRebootClearVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->getRebootClearVariableChecked(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getRebootClearVariableChecked(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 200
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    .line 203
    .local v0, "oldValue":[Ljava/lang/String;
    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeGetSetRebootClearVariable(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 207
    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method public static isDir(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "path == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    .line 92
    .local v0, "rst":[Z
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeIsDir(Ljava/lang/String;[Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 95
    :cond_1
    aget-boolean v1, v0, v2

    return v1
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "path == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Z

    aput-boolean v2, v0, v2

    .line 83
    .local v0, "rst":[Z
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeIsFile(Ljava/lang/String;[Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 86
    :cond_1
    aget-boolean v1, v0, v2

    return v1
.end method

.method public static lsDir(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 72
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "path == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeLsDir(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "list":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 77
    :cond_1
    return-object v0
.end method

.method public static mkdir(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 107
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeMkdir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 106
    :cond_1
    return-void
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "oldPath"    # Ljava/lang/String;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "oldPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "newPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeMove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 98
    :cond_2
    return-void
.end method

.method private static native nativeAddService(Ljava/lang/String;Landroid/os/IBinder;)Z
.end method

.method private static native nativeExists(Ljava/lang/String;[Z)Z
.end method

.method private static native nativeGetSetRebootClearVariable(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)Z
.end method

.method private static native nativeIsDir(Ljava/lang/String;[Z)Z
.end method

.method private static native nativeIsFile(Ljava/lang/String;[Z)Z
.end method

.method private static native nativeLsDir(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private static native nativeMkdir(Ljava/lang/String;)Z
.end method

.method private static native nativeMove(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeReadTinyFile(Ljava/lang/String;)[B
.end method

.method private static native nativeRemove(Ljava/lang/String;)Z
.end method

.method private static native nativeWriteTinyFile(Ljava/lang/String;Z[B)Z
.end method

.method public static readTinyFile(Ljava/lang/String;)[B
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "path == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeReadTinyFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 125
    .local v0, "data":[B
    if-nez v0, :cond_1

    .line 126
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 128
    :cond_1
    return-object v0
.end method

.method public static readTinyFileAndDieOnFailure(Ljava/lang/String;)[B
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    const/4 v1, 0x0

    .line 135
    .local v1, "exists":Z
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->exists(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .local v1, "exists":Z
    if-nez v1, :cond_0

    .line 142
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Not exist: "

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 143
    const/4 v2, 0x0

    return-object v2

    .line 136
    .local v1, "exists":Z
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot determine whether the file exists: "

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 138
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot determine whether the file exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 146
    .end local v0    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    .local v1, "exists":Z
    :cond_0
    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "Read: "

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 149
    :try_start_1
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->readTinyFile(Ljava/lang/String;)[B
    :try_end_1
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 150
    :catch_1
    move-exception v0

    .line 151
    .restart local v0    # "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Cannot read the file: "

    aput-object v3, v2, v4

    aput-object p0, v2, v5

    aput-object v0, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 152
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot read the file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static recursiveRemove(Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->isDir(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->remove(Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->lsDir(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, v1, v2

    .line 62
    .local v0, "f":Ljava/lang/String;
    const-string/jumbo v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ".."

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->recursiveRemove(Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v0    # "f":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->remove(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 46
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeRemove(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 45
    :cond_1
    return-void
.end method

.method public static setRebootClearVariable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->setRebootClearVariableChecked(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static setRebootClearVariableChecked(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "name == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    aput-object v3, v0, v2

    .line 224
    .local v0, "oldValue":[Ljava/lang/String;
    invoke-static {p0, v0, v1, p1}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeGetSetRebootClearVariable(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 228
    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method private static throwLastError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->getLastErrorCode()I

    move-result v0

    .line 233
    .local v0, "errorCode":I
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "errorMsg":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;

    invoke-direct {v2, v0, v1}, Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public static writeTinyFile(Ljava/lang/String;Z[B)V
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "append"    # Z
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/PriviledgedProc$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "path == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "data == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->nativeWriteTinyFile(Ljava/lang/String;Z[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-static {}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->throwLastError()V

    .line 114
    :cond_2
    return-void
.end method
