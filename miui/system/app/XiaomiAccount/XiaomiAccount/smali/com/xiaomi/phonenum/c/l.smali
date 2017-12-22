.class public Lcom/xiaomi/phonenum/c/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/phonenum/c/n;


# instance fields
.field private aeT:Lcom/xiaomi/phonenum/c/n;

.field private aeU:Lcom/xiaomi/phonenum/utils/d;

.field private aeV:Lcom/xiaomi/phonenum/utils/n;


# direct methods
.method public constructor <init>(Lcom/xiaomi/phonenum/c/n;)V
    .locals 1
    .param p1    # Lcom/xiaomi/phonenum/c/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/l;->aeV:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/c/l;->aeT:Lcom/xiaomi/phonenum/c/n;

    :try_start_0
    new-instance v0, Lcom/xiaomi/phonenum/utils/d;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/utils/d;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/phonenum/c/l;->aeU:Lcom/xiaomi/phonenum/utils/d;
    :try_end_0
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;
    .locals 8
    .param p1    # Lcom/xiaomi/phonenum/c/h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/phonenum/e;->afn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/phonenum/c/l;->aeU:Lcom/xiaomi/phonenum/utils/d;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v4, p1, Lcom/xiaomi/phonenum/c/h;->aeO:Ljava/net/URI;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/xiaomi/phonenum/c/h;->aeQ:Ljava/util/Map;

    invoke-static {v1}, Lcom/xiaomi/phonenum/utils/o;->amI(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "&"

    invoke-static {v0, v1}, Lcom/xiaomi/phonenum/utils/o;->amJ(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v7, v6

    :goto_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v1}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/phonenum/c/h;->aeP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/c/c;->anZ(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/phonenum/c/c;->aoa(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/l;->aeT:Lcom/xiaomi/phonenum/c/n;

    invoke-interface {v1, v0}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v0, v1, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    if-eqz v0, :cond_5

    :try_start_1
    new-instance v0, Lcom/xiaomi/phonenum/c/b;

    invoke-direct {v0, v1}, Lcom/xiaomi/phonenum/c/b;-><init>(Lcom/xiaomi/phonenum/c/a;)V

    iget-object v2, p0, Lcom/xiaomi/phonenum/c/l;->aeU:Lcom/xiaomi/phonenum/utils/d;

    iget-object v3, v1, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/phonenum/utils/d;->amc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/phonenum/c/b;->anV(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/b;->build()Lcom/xiaomi/phonenum/c/a;
    :try_end_1
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/c/l;->aeT:Lcom/xiaomi/phonenum/c/n;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/c/n;->aof(Lcom/xiaomi/phonenum/c/h;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acy:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/phonenum/c/l;->aeU:Lcom/xiaomi/phonenum/utils/d;

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/utils/d;->amb(Ljava/lang/String;)Lcom/xiaomi/phonenum/utils/u;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "params"

    iget-object v3, v1, Lcom/xiaomi/phonenum/utils/u;->adc:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "secretKey"

    iget-object v1, v1, Lcom/xiaomi/phonenum/utils/u;->add:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/xiaomi/phonenum/utils/RSAEncryptUtil$EncryptException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected newQuery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/xiaomi/phonenum/c/h;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/c/l;->aeV:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "EncryptHttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "encryptedRequest Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acy:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acz:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0

    :cond_5
    return-object v1

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/xiaomi/phonenum/c/l;->aeV:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v3, "EncryptHttpClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decryptedResponse Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/phonenum/bean/HttpError;->acz:Lcom/xiaomi/phonenum/bean/HttpError;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/HttpError;->alH()Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    return-object v0
.end method
