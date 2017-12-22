.class public abstract Lcom/xiaomi/accountsdk/request/M;
.super Lcom/xiaomi/accountsdk/request/N;
.source ""


# instance fields
.field protected final YV:Lcom/xiaomi/accountsdk/request/R;


# direct methods
.method protected constructor <init>(Lcom/xiaomi/accountsdk/request/R;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/N;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "arguments can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    return-void
.end method


# virtual methods
.method public abstract agp()Ljava/lang/String;
.end method

.method public agv()Lcom/xiaomi/accountsdk/request/M;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/R;->agM()Lcom/xiaomi/accountsdk/request/R;

    move-result-object v0

    instance-of v1, p0, Lcom/xiaomi/accountsdk/request/H;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/request/H;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/H;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-object v1

    :cond_0
    instance-of v1, p0, Lcom/xiaomi/accountsdk/request/P;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/request/P;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/P;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public agw()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
