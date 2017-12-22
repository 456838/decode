.class public Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;
.super Ljava/lang/Object;
.source "V1SmsCommandCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 4
    .param p0, "contentBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v0, "1"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->decodeBaseUtf16(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const-string/jumbo v0, "2"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->decodeBase2048(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 43
    :cond_1
    const-string/jumbo v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    const-string/jumbo v0, "3"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 45
    :cond_2
    const-string/jumbo v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    const-string/jumbo v0, "4"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->decodeBase2048V20151119(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 49
    :cond_3
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 50
    const-string/jumbo v1, "Encode not recognized: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static decodeBase2048(Ljava/lang/String;)[B
    .locals 5
    .param p0, "encodedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 66
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 71
    const-string/jumbo v2, "Base2048 decode failed: %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeBase2048V20151119(Ljava/lang/String;)[B
    .locals 5
    .param p0, "encodedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 91
    :try_start_0
    invoke-static {}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->getV20151119()Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->decode(Ljava/lang/String;Lcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)[B
    :try_end_0
    .catch Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/xiaomi/finddevice/common/smsencoding/BaseX$BadEncodeException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 94
    const-string/jumbo v2, "Base2048V20151119 decode failed: %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeBase64(Ljava/lang/String;)[B
    .locals 5
    .param p0, "encodedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 80
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 83
    const-string/jumbo v2, "Base64 decode failed: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-direct {v1, v2, v0}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static decodeBaseUtf16(Ljava/lang/String;)[B
    .locals 5
    .param p0, "encodedData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 55
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "called. "

    aput-object v2, v1, v4

    invoke-static {v1}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->decode([C)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 60
    const-string/jumbo v2, "BaseUtf16 decode failed: %s."

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-direct {v1, v2}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "encode"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Encode with: "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiui/cloud/common/XLogger;->log([Ljava/lang/Object;)V

    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo p1, "2"

    .line 106
    :cond_0
    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->encodeBaseUtf16([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_1
    const-string/jumbo v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->encodeBase2048([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_2
    const-string/jumbo v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->encodeBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :cond_3
    const-string/jumbo v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/finddevice/v2/command/command/V1SmsCommandCoder;->encodeBase2048V20151119([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encode not supported. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeBase2048([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 127
    invoke-static {p0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeBase2048V20151119([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 135
    invoke-static {}, Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMapFactory;->getV20151119()Lcom/xiaomi/finddevice/common/smsencoding/StaticSymmetryBaseXCodeMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseX;->encode([BLcom/xiaomi/finddevice/common/smsencoding/IBaseXCodeMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeBaseUtf16([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/xiaomi/finddevice/common/smsencoding/BaseUtf16;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "contentBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string/jumbo v0, "1"

    return-object v0

    .line 24
    :cond_0
    const-string/jumbo v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string/jumbo v0, "2"

    return-object v0

    .line 26
    :cond_1
    const-string/jumbo v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    const-string/jumbo v0, "3"

    return-object v0

    .line 28
    :cond_2
    const-string/jumbo v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    const-string/jumbo v0, "4"

    return-object v0

    .line 32
    :cond_3
    new-instance v0, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;

    .line 33
    const-string/jumbo v1, "Encode not recognized: %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Lcom/xiaomi/finddevice/v2/command/command/CommandFactory$BadCommandInfoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
