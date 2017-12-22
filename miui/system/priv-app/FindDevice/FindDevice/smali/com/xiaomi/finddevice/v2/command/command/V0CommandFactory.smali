.class public abstract Lcom/xiaomi/finddevice/v2/command/command/V0CommandFactory;
.super Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;
.source "V0CommandFactory.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "seqno"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "skey"    # Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;
    .param p6, "digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p5}, Lcom/xiaomi/finddevice/v2/FindDeviceSecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/finddevice/common/util/KeyTool;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "token":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .local v0, "digestBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/xiaomi/finddevice/common/util/Md5;->getLastMd5Digest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 37
    new-instance v3, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;

    const-string/jumbo v4, "Digest not match. "

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$VerifySignatureException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_1
    return-void
.end method
