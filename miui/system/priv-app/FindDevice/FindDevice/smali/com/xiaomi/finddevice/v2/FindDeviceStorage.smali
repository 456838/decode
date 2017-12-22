.class public Lcom/xiaomi/finddevice/v2/FindDeviceStorage;
.super Ljava/lang/Object;
.source "FindDeviceStorage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateOldDataDigest(Landroid/content/Context;)[B
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 94
    const-string/jumbo v6, "NULL"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 95
    .local v1, "NULL_BYTES":[B
    const-string/jumbo v6, "##"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 97
    .local v0, "DELIMITER_BYTES":[B
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getDeviceCredentialTypeMarkOldVersion(Landroid/content/Context;)[B

    move-result-object v3

    .line 99
    .local v3, "deviceCredentialTypeMarkOld":[B
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getSoftwareDeviceCredentialOldVersion(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v2

    .line 101
    .local v2, "deviceCredentialNoTZOld":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    if-nez v3, :cond_0

    .line 102
    if-nez v2, :cond_0

    .line 103
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "Empty old data. Returns null. "

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 104
    return-object v9

    .line 107
    :cond_0
    const/4 v5, 0x0

    .line 109
    .local v5, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 114
    .local v5, "md":Ljava/security/MessageDigest;
    if-nez v3, :cond_1

    move-object v3, v1

    .end local v3    # "deviceCredentialTypeMarkOld":[B
    :cond_1
    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 115
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 116
    if-nez v2, :cond_2

    .end local v1    # "NULL_BYTES":[B
    :goto_0
    invoke-virtual {v5, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 119
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    return-object v6

    .line 110
    .restart local v1    # "NULL_BYTES":[B
    .restart local v3    # "deviceCredentialTypeMarkOld":[B
    .local v5, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 111
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "MD5 not supported? "

    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 117
    .end local v3    # "deviceCredentialTypeMarkOld":[B
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v5, "md":Ljava/security/MessageDigest;
    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->toJSON()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method private static clearStatusStorage(Landroid/content/Context;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveStatus(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V

    .line 144
    return-void
.end method

.method public static getDeviceCredentialTypeMark(Landroid/content/Context;)[B
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 149
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 152
    .local v0, "type":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<[B>;"
    const-string/jumbo v1, "fdsd"

    .line 153
    const-string/jumbo v2, "tp"

    .line 154
    new-instance v3, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$2;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$2;-><init>(Lmiui/cloud/common/XWrapper;)V

    .line 150
    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->readTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;)V

    .line 162
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    return-object v1
.end method

.method private static getDeviceCredentialTypeMarkOldVersion(Landroid/content/Context;)[B
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 167
    const-string/jumbo v0, "/data/miui/finddevice.TZ.dctype"

    .line 166
    invoke-static {v0}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->readTinyFileAndDieOnFailure(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSoftwareDeviceCredential(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 189
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 192
    .local v0, "deviceCredential":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;>;"
    const-string/jumbo v1, "fdsd"

    .line 193
    const-string/jumbo v2, "dc"

    .line 194
    new-instance v3, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$3;-><init>(Lmiui/cloud/common/XWrapper;)V

    .line 190
    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->readTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;)V

    .line 217
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    return-object v1
.end method

.method private static getSoftwareDeviceCredentialOldVersion(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 225
    const-string/jumbo v7, "/data/miui/finddevice.key"

    .line 224
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->readTinyFileAndDieOnFailure(Ljava/lang/String;)[B

    move-result-object v1

    .line 228
    .local v1, "credentialBytes":[B
    const-string/jumbo v7, "/data/miui/finddevice.key.fingerprint"

    .line 227
    invoke-static {v7}, Lcom/xiaomi/finddevice/common/PriviledgedProc;->readTinyFileAndDieOnFailure(Ljava/lang/String;)[B

    move-result-object v2

    .line 230
    .local v2, "credentialDigest":[B
    if-nez v1, :cond_0

    .line 231
    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "No credential in the persistent stroage. "

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 232
    return-object v9

    .line 235
    :cond_0
    if-nez v2, :cond_1

    .line 236
    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "Bad credential stroage. "

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 237
    return-object v9

    .line 240
    :cond_1
    const/4 v6, 0x0

    .line 242
    .local v6, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 248
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_2

    .line 249
    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "Bad credential stroage. "

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 250
    return-object v9

    .line 243
    .local v6, "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 244
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "MD5 not supported? "

    invoke-direct {v7, v8, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 255
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .local v6, "md":Ljava/security/MessageDigest;
    :cond_2
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    .local v3, "credentialJSON":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->fromJSON(Lorg/json/JSONObject;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v0

    .line 265
    .local v0, "credential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    if-nez v0, :cond_3

    .line 267
    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "Bad credential stroage. "

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 268
    return-object v9

    .line 256
    .end local v0    # "credential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .end local v3    # "credentialJSON":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 258
    .local v5, "e":Lorg/json/JSONException;
    new-array v7, v8, [Ljava/lang/Object;

    const-string/jumbo v8, "Bad credential stroage. "

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    .line 259
    return-object v9

    .line 271
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v0    # "credential":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    .restart local v3    # "credentialJSON":Lorg/json/JSONObject;
    :cond_3
    return-object v0
.end method

.method public static getStatus(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/FindDeviceStatus;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 294
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 297
    .local v0, "status":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Lcom/xiaomi/finddevice/v2/FindDeviceStatus;>;"
    const-string/jumbo v1, "fdsd"

    const-string/jumbo v2, "st"

    .line 298
    new-instance v3, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$4;

    invoke-direct {v3, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$4;-><init>(Lmiui/cloud/common/XWrapper;)V

    .line 295
    invoke-static {p0, v1, v2, v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->readTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;)V

    .line 312
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    return-object v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->upgradeData(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public static saveDeviceCredentialTypeMark(Landroid/content/Context;[B)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typeMark"    # [B

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 174
    const-string/jumbo v0, "fdsd"

    .line 175
    const-string/jumbo v1, "tp"

    .line 172
    invoke-static {p0, v0, v1, p1}, Lcom/xiaomi/finddevice/common/PersistentStroage;->writeTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 170
    :goto_0
    return-void

    .line 180
    :cond_0
    const-string/jumbo v0, "fdsd"

    .line 181
    const-string/jumbo v1, "tp"

    .line 178
    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/PersistentStroage;->clearTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveSoftwareDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "credentail"    # Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 279
    .local v1, "credentialJson":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 283
    .local v0, "credentialBytes":[B
    const-string/jumbo v2, "fdsd"

    const-string/jumbo v3, "dc"

    .line 281
    invoke-static {p0, v2, v3, v0}, Lcom/xiaomi/finddevice/common/PersistentStroage;->writeTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 275
    .end local v0    # "credentialBytes":[B
    .end local v1    # "credentialJson":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string/jumbo v2, "fdsd"

    const-string/jumbo v3, "dc"

    .line 286
    invoke-static {p0, v2, v3}, Lcom/xiaomi/finddevice/common/PersistentStroage;->clearTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static saveStatus(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/FindDeviceStatus;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "status"    # Lcom/xiaomi/finddevice/v2/FindDeviceStatus;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    .line 319
    const-string/jumbo v0, "fdsd"

    const-string/jumbo v1, "st"

    .line 320
    invoke-interface {p1}, Lcom/xiaomi/finddevice/v2/FindDeviceStatus;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 317
    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/finddevice/common/PersistentStroage;->writeTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 315
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string/jumbo v0, "fdsd"

    const-string/jumbo v1, "st"

    .line 322
    invoke-static {p0, v0, v1}, Lcom/xiaomi/finddevice/common/PersistentStroage;->clearTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static upgradeData(Landroid/content/Context;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->calculateOldDataDigest(Landroid/content/Context;)[B

    move-result-object v1

    .line 48
    .local v1, "oldDataDigest":[B
    if-nez v1, :cond_0

    .line 49
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Empty old data. No need to upgrade. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 50
    return-void

    .line 53
    :cond_0
    new-instance v0, Lmiui/cloud/common/XWrapper;

    invoke-direct {v0}, Lmiui/cloud/common/XWrapper;-><init>()V

    .line 54
    .local v0, "needUpgrade":Lmiui/cloud/common/XWrapper;, "Lmiui/cloud/common/XWrapper<Ljava/lang/Boolean;>;"
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/cloud/common/XWrapper;->set(Ljava/lang/Object;)V

    .line 57
    const-string/jumbo v2, "fdsd"

    .line 58
    const-string/jumbo v3, "ug"

    .line 59
    new-instance v4, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;

    invoke-direct {v4, v1, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage$1;-><init>([BLmiui/cloud/common/XWrapper;)V

    .line 55
    invoke-static {p0, v2, v3, v4}, Lcom/xiaomi/finddevice/common/PersistentStroage;->readTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/common/PersistentStroage$IDataHandler;)V

    .line 69
    invoke-virtual {v0}, Lmiui/cloud/common/XWrapper;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Same old data. No need to upgrade. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 71
    return-void

    .line 75
    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Need upgrade. "

    aput-object v3, v2, v6

    invoke-static {v2}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 77
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->upgradeDeviceCredentialTypeMarkStorage(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->upgradeSoftwareDeviceCredentialStorage(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->clearStatusStorage(Landroid/content/Context;)V

    .line 84
    const-string/jumbo v2, "fdsd"

    .line 85
    const-string/jumbo v3, "ug"

    .line 82
    invoke-static {p0, v2, v3, v1}, Lcom/xiaomi/finddevice/common/PersistentStroage;->writeTinyData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 45
    return-void
.end method

.method private static upgradeDeviceCredentialTypeMarkStorage(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Called. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 126
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getDeviceCredentialTypeMarkOldVersion(Landroid/content/Context;)[B

    move-result-object v0

    .line 127
    .local v0, "typeMarkOld":[B
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Old type mark: "

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 129
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveDeviceCredentialTypeMark(Landroid/content/Context;[B)V

    .line 123
    return-void
.end method

.method private static upgradeSoftwareDeviceCredentialStorage(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "Called. "

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 137
    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->getSoftwareDeviceCredentialOldVersion(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;

    move-result-object v0

    .line 138
    .local v0, "deviceCredentialNoTZOld":Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Old device credential: "

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 140
    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/v2/FindDeviceStorage;->saveSoftwareDeviceCredential(Landroid/content/Context;Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerNoTZ$DeviceCredentialNoTZ;)V

    .line 133
    return-void
.end method
