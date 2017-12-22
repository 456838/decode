.class public Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;
.super Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
.source "TelephonyManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaCellInfo"
.end annotation


# instance fields
.field public baseStationId:I

.field public networkId:I

.field public systemId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;-><init>()V

    .line 139
    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->systemId:I

    .line 140
    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->networkId:I

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

    .line 138
    return-void
.end method


# virtual methods
.method public isGoodInfo()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

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
    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 159
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap1(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 162
    iget v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->systemId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 163
    iget v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 164
    iget v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->networkId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Never happed. "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 168
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    throw v3
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "obj":Ljava/util/Map;
    const-string/jumbo v1, "mcc"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v1, "sid"

    iget v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->systemId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v1, "bid"

    iget v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->baseStationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v1, "nid"

    iget v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CdmaCellInfo;->networkId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method
