.class final Lcom/xiaomi/accountsdk/request/T;
.super Lcom/xiaomi/accountsdk/request/P;
.source ""


# instance fields
.field final synthetic Zi:Lcom/xiaomi/accountsdk/request/S;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/S;Lcom/xiaomi/accountsdk/request/R;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/T;->Zi:Lcom/xiaomi/accountsdk/request/S;

    invoke-direct {p0, p2}, Lcom/xiaomi/accountsdk/request/P;-><init>(Lcom/xiaomi/accountsdk/request/R;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/T;->Zi:Lcom/xiaomi/accountsdk/request/S;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/S;->agX(Lcom/xiaomi/accountsdk/request/S;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/T;->Zi:Lcom/xiaomi/accountsdk/request/S;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/S;->agZ(Lcom/xiaomi/accountsdk/request/S;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/T;->Zi:Lcom/xiaomi/accountsdk/request/S;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/S;->agY(Lcom/xiaomi/accountsdk/request/S;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/b;->aan(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/MetaLoginData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v2, "Empty meta login data"

    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/account/exception/InvalidUserNameException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw v1

    :catch_4
    move-exception v0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/T;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v2, "_sign"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->ST:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/T;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v2, "qs"

    iget-object v3, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SU:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/T;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v2, "callback"

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/MetaLoginData;->SV:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->ahw(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-super {p0}, Lcom/xiaomi/accountsdk/request/P;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method
