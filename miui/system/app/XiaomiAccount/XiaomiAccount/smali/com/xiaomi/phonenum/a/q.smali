.class public Lcom/xiaomi/phonenum/a/q;
.super Lcom/xiaomi/phonenum/a/s;
.source ""


# instance fields
.field private aeb:Lcom/xiaomi/phonenum/utils/n;

.field private aec:Lcom/xiaomi/phonenum/a/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/phonenum/a/j;Lcom/xiaomi/phonenum/a/g;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/a/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/phonenum/a/s;-><init>(Lcom/xiaomi/phonenum/a/n;Lcom/xiaomi/phonenum/a/g;)V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/q;->aeb:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/q;->aec:Lcom/xiaomi/phonenum/a/j;

    return-void
.end method


# virtual methods
.method public ann(I)Lcom/xiaomi/phonenum/bean/a;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/q;->aek:Lcom/xiaomi/phonenum/c/j;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/j;->aol()Lcom/xiaomi/phonenum/c/n;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/q;->aec:Lcom/xiaomi/phonenum/a/j;

    invoke-static {v2}, Lcom/xiaomi/phonenum/a/j;->any(Lcom/xiaomi/phonenum/a/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServerObtainer response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, v0, Lcom/xiaomi/phonenum/c/a;->code:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/a/q;->anS(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method
