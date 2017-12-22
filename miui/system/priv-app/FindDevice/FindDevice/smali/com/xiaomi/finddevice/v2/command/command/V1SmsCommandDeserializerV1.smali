.class public Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializerV1;
.super Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
.source "V1SmsCommandDeserializerV1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected deserializeKeyContentInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;)V
    .locals 10
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
    .line 22
    const/4 v6, 0x2

    .line 23
    .local v6, "ivStart":I
    const/16 v5, 0x12

    .line 24
    .local v5, "ivEnd":I
    :try_start_0
    array-length v7, p1

    .line 23
    const/16 v8, 0x12

    .line 24
    if-lt v8, v7, :cond_0

    .line 25
    new-instance v7, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;

    const-string/jumbo v8, "Too short to get an iv. "

    invoke-direct {v7, v8}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :catch_0
    move-exception v3

    .line 43
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;

    invoke-direct {v7, v3}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 27
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-static {p1, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 29
    .local v4, "iv":[B
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 30
    .local v1, "cipherPartLen":I
    and-int/lit16 v1, v1, 0xff

    .line 31
    new-array v0, v1, [B

    .line 32
    .local v0, "cipherPartContent":[B
    invoke-virtual {p2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 35
    invoke-interface {p3, v0, v4}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;->decodeCipherPart([B[B)Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 37
    .local v2, "cipherPartStream":Ljava/io/DataInputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v7

    iput-short v7, p4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->type:S

    .line 38
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v8

    iput-wide v8, p4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->uid:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    invoke-static {v2}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    return-void

    .line 39
    :catchall_0
    move-exception v7

    .line 40
    invoke-static {v2}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 39
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected deserializeKeySignatureVerificationInfo(Ljava/io/DataOutputStream;Ljava/lang/String;[B[B)V
    .locals 3
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
    .line 53
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 54
    invoke-virtual {p1, p4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Never happed. "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
