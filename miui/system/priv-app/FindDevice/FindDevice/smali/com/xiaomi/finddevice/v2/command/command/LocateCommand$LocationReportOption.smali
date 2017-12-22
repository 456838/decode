.class public Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;
.super Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;
.source "LocateCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/command/command/LocateCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LocationReportOption"
.end annotation


# instance fields
.field private final mAccuracy:F

.field private final mLati:D

.field private final mLongi:D

.field private final mProvider:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;DDF)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "longi"    # D
    .param p4, "lati"    # D
    .param p6, "accuracy"    # F

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$ReportOption;-><init>()V

    .line 290
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mProvider:Ljava/lang/String;

    .line 291
    iput-wide p2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLongi:D

    .line 292
    iput-wide p4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLati:D

    .line 293
    iput p6, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mAccuracy:F

    .line 289
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mAccuracy:F

    return v0
.end method

.method public getBinaryReplyContent([B)[B
    .locals 6
    .param p1, "baseContent"    # [B

    .prologue
    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 324
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 326
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x2

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 328
    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLongi:D

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 329
    iget-wide v4, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLati:D

    invoke-virtual {v1, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 330
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 331
    iget v3, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mAccuracy:F

    float-to-int v3, v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 337
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Never happen. "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 335
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    throw v3
.end method

.method public getBinaryReplyType()B
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x3

    return v0
.end method

.method public getJSONReplyContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "baseContent"    # Lorg/json/JSONObject;

    .prologue
    .line 309
    :try_start_0
    const-string/jumbo v1, "command"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 310
    const-string/jumbo v1, "longitude"

    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLongi:D

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 311
    const-string/jumbo v1, "latitude"

    iget-wide v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLati:D

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 312
    const-string/jumbo v1, "accuracy"

    iget v2, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mAccuracy:F

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-object p1

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Error on getting JSON reply content. "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getLati()D
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLati:D

    return-wide v0
.end method

.method public getLongi()D
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mLongi:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xiaomi/finddevice/v2/command/command/LocateCommand$LocationReportOption;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getStringReplyType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string/jumbo v0, "gps"

    return-object v0
.end method
