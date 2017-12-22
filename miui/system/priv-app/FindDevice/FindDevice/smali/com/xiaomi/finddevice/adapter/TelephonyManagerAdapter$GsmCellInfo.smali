.class public Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;
.super Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
.source "TelephonyManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GsmCellInfo"
.end annotation


# instance fields
.field public cellId:I

.field public locationAreaCode:I

.field public mobileNetworkCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;-><init>()V

    .line 103
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->locationAreaCode:I

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    .line 102
    return-void
.end method


# virtual methods
.method public isGoodInfo()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toBinary()[B
    .locals 5

    .prologue
    .line 122
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap1(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap1(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 127
    iget v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 128
    iget v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->locationAreaCode:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Never happed. "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 132
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    throw v3
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v0, "obj":Ljava/util/Map;
    const-string/jumbo v1, "mcc"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "mnc"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v1, "cid"

    iget v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->cellId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v1, "lac"

    iget v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$GsmCellInfo;->locationAreaCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method
