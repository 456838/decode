.class public Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;
.super Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;
.source "LocateCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhoneNetworkReportOption"
.end annotation


# instance fields
.field private mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;-><init>()V

    .line 228
    iput p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;->mSlotId:I

    .line 227
    return-void
.end method


# virtual methods
.method public getBinaryReplyContent([B)[B
    .locals 6
    .param p1, "baseContent"    # [B

    .prologue
    .line 262
    iget v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;->mSlotId:I

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->getSlotInfo(II)Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;

    move-result-object v3

    .line 264
    .local v3, "slotInfo":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    invoke-static {p1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 269
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->isEmptySlot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    const/4 v4, 0x5

    new-array v4, v4, [B

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 274
    :goto_0
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighborsToBinary()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 275
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 272
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->baseInfoToBinary()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Never happen. "

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 279
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    throw v4
.end method

.method public getBinaryReplyType()B
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public getJSONReplyContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "baseContent"    # Lorg/json/JSONObject;

    .prologue
    .line 244
    iget v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$PhoneNetworkReportOption;->mSlotId:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->getSlotInfo(II)Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;

    move-result-object v1

    .line 247
    .local v1, "slotInfo":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
    :try_start_0
    const-string/jumbo v2, "command"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->isEmptySlot()Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    const-string/jumbo v2, "simBase"

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->baseInfoToJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    :cond_0
    const-string/jumbo v2, "simTowers"

    invoke-virtual {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighborsToJSON()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    return-object p1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Should not happen. "

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getStringReplyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string/jumbo v0, "simWifi"

    return-object v0
.end method
