.class public Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;
.super Ljava/lang/Object;
.source "TelephonyManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlotInfo"
.end annotation


# instance fields
.field public mobileCountryCode:Ljava/lang/String;

.field public mobileNetworkCode:Ljava/lang/String;

.field public neighbors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public radioType:Ljava/lang/String;

.field public slotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->slotId:I

    .line 33
    return-void
.end method


# virtual methods
.method public baseInfoToBinary()[B
    .locals 5

    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap1(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 60
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap1(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 61
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    invoke-static {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter;->-wrap0(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 62
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Never happed. "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 65
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 64
    throw v3
.end method

.method public baseInfoToJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "obj":Ljava/util/Map;
    const-string/jumbo v1, "radioType"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->radioType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string/jumbo v1, "mcc"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v1, "mnc"

    iget-object v2, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    return-object v1
.end method

.method public isEmptySlot()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public neighborsToBinary()[B
    .locals 7

    .prologue
    .line 79
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 83
    iget-object v5, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;

    .line 84
    .local v3, "info":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    invoke-virtual {v3}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;->toBinary()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    .end local v3    # "info":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Never happed. "

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 89
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    throw v5

    .line 89
    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public neighborsToJSON()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 72
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$SlotInfo;->neighbors:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;

    .line 73
    .local v1, "info":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    invoke-virtual {v1}, Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 75
    .end local v1    # "info":Lcom/xiaomi/finddevice/adapter/TelephonyManagerAdapter$CellInfo;
    :cond_0
    return-object v0
.end method
