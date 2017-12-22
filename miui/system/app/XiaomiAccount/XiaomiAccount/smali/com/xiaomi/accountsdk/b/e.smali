.class public Lcom/xiaomi/accountsdk/b/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/accountsdk/b/d;


# instance fields
.field private abG:[B

.field private abH:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/b/e;->abH:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/b/e;->abG:[B

    return-void
.end method


# virtual methods
.method public alf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/e;->abH:Ljava/lang/String;

    return-object v0
.end method

.method public alg()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/b/e;->abG:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public alh()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/e;->abG:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
