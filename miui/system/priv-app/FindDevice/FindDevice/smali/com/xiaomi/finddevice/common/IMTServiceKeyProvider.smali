.class public interface abstract Lcom/xiaomi/finddevice/common/IMTServiceKeyProvider;
.super Ljava/lang/Object;
.source "IMTServiceKeyProvider.java"


# virtual methods
.method public abstract getKey(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
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
.end method
