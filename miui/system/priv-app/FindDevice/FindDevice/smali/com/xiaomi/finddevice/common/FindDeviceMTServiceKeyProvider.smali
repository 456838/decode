.class public Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;
.super Ljava/lang/Object;
.source "FindDeviceMTServiceKeyProvider.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;-><init>()V

    .line 13
    sput-object v0, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;->sInstance:Lcom/xiaomi/finddevice/common/FindDeviceMTServiceKeyProvider;

    return-object v0
.end method


# virtual methods
.method public getKey(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$BadResponseException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$RequestPrepareException;,
            Lcom/xiaomi/finddevice/v2/net/IRequestManager$OperationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v0

    .line 26
    .local v0, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->key(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 26
    return-object v1

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 27
    throw v1
.end method
