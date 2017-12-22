.class public abstract Lcom/xiaomi/accountsdk/b/c;
.super Lcom/xiaomi/accountsdk/b/a;
.source ""


# instance fields
.field private abE:Ljava/lang/String;

.field private abF:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/b/a;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/b/c;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/b/c;->contentType:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/b/c;->abE:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/b/c;->abF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public akO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/c;->abE:Ljava/lang/String;

    return-object v0
.end method

.method public akP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/c;->name:Ljava/lang/String;

    return-object v0
.end method

.method public akR()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/c;->abF:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/b/c;->contentType:Ljava/lang/String;

    return-object v0
.end method
