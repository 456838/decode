.class final Lcom/xiaomi/account/ui/cj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/o",
        "<",
        "Lcom/xiaomi/account/utils/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hI:Lcom/xiaomi/account/ui/R;

.field final synthetic hJ:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/R;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cj;->hI:Lcom/xiaomi/account/ui/R;

    iput-object p2, p0, Lcom/xiaomi/account/ui/cj;->hJ:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/xiaomi/account/utils/r;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/cj;->hJ:Landroid/content/Context;

    const-string/jumbo v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/c;->yP(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/c;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v0, "MiPayInfoFragment"

    const-string/jumbo v1, "passport info is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    :try_start_0
    const-string/jumbo v0, "passportapi"

    invoke-static {v2, v0}, Lcom/xiaomi/account/utils/q;->oO(Lcom/xiaomi/accountsdk/account/data/a;Ljava/lang/String;)Lcom/xiaomi/account/utils/r;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MiPayInfoFragment"

    const-string/jumbo v4, "query pay info"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "MiPayInfoFragment"

    const-string/jumbo v4, "query pay info"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v3, "MiPayInfoFragment"

    const-string/jumbo v4, "query pay info"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/xiaomi/account/ui/cj;->hJ:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/xiaomi/passport/data/c;->yQ(Landroid/content/Context;)V

    goto :goto_1

    :catch_4
    move-exception v0

    const-string/jumbo v3, "MiPayInfoFragment"

    const-string/jumbo v4, "query pay info"

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/cj;->run()Lcom/xiaomi/account/utils/r;

    move-result-object v0

    return-object v0
.end method
