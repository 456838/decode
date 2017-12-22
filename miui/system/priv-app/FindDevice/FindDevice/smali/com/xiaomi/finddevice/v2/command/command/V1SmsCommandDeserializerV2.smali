.class public Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV2;
.super Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
.source "V1SmsCommandDeserializerV2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserializeKeyContentInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;)V
    .locals 2
    .param p1, "contentBodyBin"    # [B
    .param p2, "contentBodyStream"    # Ljava/io/DataInputStream;
    .param p3, "decoder"    # Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;
    .param p4, "commandInfo"    # Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation

    .prologue
    .line 15
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput-short v1, p4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->type:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;

    invoke-direct {v1, v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected deserializeKeySignatureVerificationInfo(Ljava/io/DataOutputStream;Ljava/lang/String;[B[B)V
    .locals 7
    .param p1, "contentStream"    # Ljava/io/DataOutputStream;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "fidBytes"    # [B
    .param p4, "simIdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 30
    .local v2, "userIdLong":J
    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 31
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 32
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 35
    .end local v2    # "userIdLong":J
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 33
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Never happed. "

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
