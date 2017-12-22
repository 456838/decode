.class public Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;
.super Ljava/lang/Object;
.source "SDKMTServiceKeyProvider.java"

# interfaces
.implements Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;


# static fields
.field private static sInstance:Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;-><init>()V

    .line 13
    sput-object v0, Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;->sInstance:Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;

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

.method public static get()Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;->sInstance:Lcom/xiaomi/finddevice/common/SDKMTServiceKeyProvider;

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
    .line 25
    invoke-static {p1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->obtain(Landroid/content/Context;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol;

    move-result-object v0

    .line 27
    .local v0, "serverProtocol":Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
    :try_start_0
    const-string/jumbo v1, "allService"

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->key(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 27
    return-object v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    invoke-virtual {v0}, Lcom/xiaomi/finddevice/v2/net/ServerProtocol;->release()V

    .line 28
    throw v1
.end method
