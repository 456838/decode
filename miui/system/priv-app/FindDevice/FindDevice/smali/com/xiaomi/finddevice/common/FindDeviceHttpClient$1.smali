.class final Lcom/xiaomi/finddevice/common/FindDeviceHttpClient$1;
.super Lmiui/cloud/net/XHttpClient$DataProcessorFactor;
.source "FindDeviceHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/FindDeviceHttpClient;->get()Lmiui/cloud/net/XHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmiui/cloud/net/XHttpClient$DataProcessorFactor;-><init>()V

    return-void
.end method


# virtual methods
.method public getReceiveDataProcessor(Ljava/util/Map;Ljava/io/InputStream;)Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;
    .locals 2
    .param p2, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/InputStream;",
            ")",
            "Lmiui/cloud/net/XHttpClient$IReceiveDataProcessor;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Lmiui/cloud/net/XJSONProcessor;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, v1}, Lmiui/cloud/net/XJSONProcessor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSendDataProcessor(Ljava/lang/String;Ljava/lang/Object;)Lmiui/cloud/net/XHttpClient$ISendDataProcessor;
    .locals 1
    .param p1, "outEncoding"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 28
    new-instance v0, Lmiui/cloud/net/XUrlencodedProcessor;

    invoke-direct {v0, p1}, Lmiui/cloud/net/XUrlencodedProcessor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
