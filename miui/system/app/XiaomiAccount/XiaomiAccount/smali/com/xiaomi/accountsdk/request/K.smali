.class public abstract Lcom/xiaomi/accountsdk/request/K;
.super Lcom/xiaomi/accountsdk/request/N;
.source ""


# instance fields
.field private final YS:Lcom/xiaomi/accountsdk/request/N;

.field private final YT:Lcom/xiaomi/accountsdk/request/N;

.field private YU:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/N;Lcom/xiaomi/accountsdk/request/N;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/N;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/K;->YU:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "both arguments should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/K;->YS:Lcom/xiaomi/accountsdk/request/N;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/K;->YT:Lcom/xiaomi/accountsdk/request/N;

    return-void
.end method


# virtual methods
.method protected abstract agl()V
.end method

.method protected abstract agm()V
.end method

.method protected abstract agn(Lcom/xiaomi/accountsdk/request/f;)Z
.end method

.method protected abstract ago(Ljava/lang/Exception;)Z
.end method

.method public final agu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/accountsdk/request/K;->YU:Z

    return v0
.end method

.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/K;->YS:Lcom/xiaomi/accountsdk/request/N;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/N;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/K;->agn(Lcom/xiaomi/accountsdk/request/f;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/K;->agm()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/K;->ago(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/K;->ago(Ljava/lang/Exception;)Z

    move-result v1

    if-nez v1, :cond_0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/K;->agl()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/K;->YU:Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/K;->YT:Lcom/xiaomi/accountsdk/request/N;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/N;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method
