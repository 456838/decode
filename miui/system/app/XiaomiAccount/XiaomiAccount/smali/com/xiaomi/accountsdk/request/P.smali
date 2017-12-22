.class public Lcom/xiaomi/accountsdk/request/P;
.super Lcom/xiaomi/accountsdk/request/M;
.source ""


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/R;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/M;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-void
.end method


# virtual methods
.method public agp()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "POST"

    return-object v0
.end method

.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v4, v4, Lcom/xiaomi/accountsdk/request/R;->Zb:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-boolean v5, v5, Lcom/xiaomi/accountsdk/request/R;->Ze:Z

    iget-object v6, p0, Lcom/xiaomi/accountsdk/request/P;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v6, v6, Lcom/xiaomi/accountsdk/request/R;->Zf:Ljava/lang/Integer;

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/accountsdk/request/m;->aej(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/Integer;)Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    throw v1
.end method
