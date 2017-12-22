.class public Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;
.super Ljava/lang/Object;
.source "SimpleStrongVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;
    }
.end annotation


# static fields
.field private static final VT:[B

.field private static final VT_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 17
    sput-object v0, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    .line 19
    sget-object v0, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    array-length v0, v0

    sput v0, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    .line 9
    return-void

    .line 18
    nop

    :array_0
    .array-data 1
        -0x2ct
        0x1dt
        -0x74t
        -0x27t
        -0x71t
        0x0t
        -0x4et
        0x4t
        -0x17t
        -0x80t
        0x9t
        -0x68t
        -0x14t
        -0x8t
        0x42t
        0x7et
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unfold([B)[B
    .locals 6
    .param p0, "wrapped"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p0, :cond_0

    .line 46
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "wrapped == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 49
    :cond_0
    array-length v3, p0

    sget v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    if-ge v3, v4, :cond_1

    .line 50
    new-instance v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;

    const-string/jumbo v4, "wrapped.length < VT_LEN"

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_1
    array-length v3, p0

    sget v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 54
    new-instance v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;

    const-string/jumbo v4, "Bad length. "

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    if-ge v0, v3, :cond_4

    .line 58
    aget-byte v3, p0, v0

    sget-object v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_3

    .line 59
    new-instance v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;

    const-string/jumbo v4, "Bad VT header. "

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_4
    array-length v3, p0

    sget v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 64
    .local v2, "rawLen":I
    new-array v1, v2, [B

    .line 66
    .local v1, "raw":[B
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 67
    sget v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    aget-byte v3, p0, v3

    sget-object v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    sget v5, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    rem-int v5, v0, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 68
    aget-byte v3, v1, v0

    sget v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    add-int/2addr v4, v0

    aget-byte v4, p0, v4

    if-eq v3, v4, :cond_5

    .line 69
    new-instance v3, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad data at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier$VerfyFailedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 66
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_6
    return-object v1
.end method

.method public static wrap([B)[B
    .locals 7
    .param p0, "raw"    # [B

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "raw == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 26
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 29
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    sget-object v4, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 30
    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 31
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    .line 32
    aget-byte v4, p0, v3

    sget-object v5, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT:[B

    sget v6, Lcom/xiaomi/finddevice/common/util/SimpleStrongVerifier;->VT_LEN:I

    rem-int v6, v3, v6

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 34
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Never happen. "

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 37
    invoke-static {v1}, Lmiui/cloud/common/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    throw v4
.end method
