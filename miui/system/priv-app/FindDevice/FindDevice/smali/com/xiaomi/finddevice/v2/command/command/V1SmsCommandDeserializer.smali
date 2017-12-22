.class public abstract Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;
.super Ljava/lang/Object;
.source "V1SmsCommandDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;,
        Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;,
        Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;,
        Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeCommandInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    .locals 4
    .param p1, "contentBodyBin"    # [B
    .param p2, "contentBodyStream"    # Ljava/io/DataInputStream;
    .param p3, "decoder"    # Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;

    invoke-direct {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;-><init>()V

    .line 50
    .local v0, "commandInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->seqno:J

    .line 51
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;->timestamp:J

    .line 52
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;->deserializeKeyContentInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-object v0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;

    invoke-direct {v2, v1}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected abstract deserializeKeyContentInfo([BLjava/io/DataInputStream;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$ICipherPartDecoder;Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$CommandInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;,
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$DecryptionException;
        }
    .end annotation
.end method

.method protected abstract deserializeKeySignatureVerificationInfo(Ljava/io/DataOutputStream;Ljava/lang/String;[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
        }
    .end annotation
.end method

.method public deserializeSignatureVerificationInfo([BLcom/xiaomi/finddevice/v2/FindDevicePublicKey;Ljava/lang/String;[B[B)Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;
    .locals 7
    .param p1, "contentBodyBin"    # [B
    .param p2, "signatureKey"    # Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "fidBytes"    # [B
    .param p5, "simIdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$DeserializationException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;

    invoke-direct {v4}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;-><init>()V

    .line 69
    .local v4, "signatureVerificationInfo":Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;
    invoke-virtual {p2}, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey;->getKeyDescription()Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;

    move-result-object v5

    iget v3, v5, Lcom/xiaomi/finddevice/v2/FindDevicePublicKey$KeyDescription;->signLen:I

    .line 70
    .local v3, "signLen":I
    array-length v5, p1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 75
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    array-length v5, p1

    sub-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {v1, p1, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 76
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer;->deserializeKeySignatureVerificationInfo(Ljava/io/DataOutputStream;Ljava/lang/String;[B[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;->contentToVerify:[B

    .line 85
    array-length v5, p1

    sub-int/2addr v5, v3

    array-length v6, p1

    invoke-static {p1, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 84
    iput-object v5, v4, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandDeserializer$SignatureVerificationInfo;->signature:[B

    .line 87
    return-object v4

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Never happed. "

    invoke-direct {v5, v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 80
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    throw v5
.end method
