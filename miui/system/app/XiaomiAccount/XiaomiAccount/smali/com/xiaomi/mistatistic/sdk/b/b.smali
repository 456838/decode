.class final Lcom/xiaomi/mistatistic/sdk/b/b;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private aiA:Lcom/xiaomi/mistatistic/sdk/b/a;

.field private aiB:Lcom/xiaomi/mistatistic/sdk/b/e;

.field private aiz:Ljava/io/OutputStream;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/b/a;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiA:Lcom/xiaomi/mistatistic/sdk/b/a;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/b/e;Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiB:Lcom/xiaomi/mistatistic/sdk/b/e;

    return-void
.end method

.method private asS(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiA:Lcom/xiaomi/mistatistic/sdk/b/a;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiB:Lcom/xiaomi/mistatistic/sdk/b/e;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiA:Lcom/xiaomi/mistatistic/sdk/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/b/a;->asQ(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiB:Lcom/xiaomi/mistatistic/sdk/b/e;

    invoke-virtual {v0, p1}, Lcom/xiaomi/mistatistic/sdk/b/e;->asT(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    return v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->asS(Ljava/lang/Exception;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->asS(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->asS(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write([B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->asS(Ljava/lang/Exception;)V

    throw v0
.end method

.method public write([BII)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->aiz:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/b/b;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mistatistic/sdk/b/b;->asS(Ljava/lang/Exception;)V

    throw v0
.end method
