.class public Lcom/xiaomi/accountsdk/request/O;
.super Lcom/xiaomi/accountsdk/request/N;
.source ""


# static fields
.field private static final YW:Ljava/lang/String;


# instance fields
.field private final YX:Lcom/xiaomi/accountsdk/account/d;

.field private YY:Z

.field private final YZ:Lcom/xiaomi/accountsdk/request/M;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/request/O;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/request/O;->YW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/accountsdk/request/M;Lcom/xiaomi/accountsdk/account/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/N;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/request/O;->YY:Z

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/O;->YZ:Lcom/xiaomi/accountsdk/request/M;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/O;->YX:Lcom/xiaomi/accountsdk/account/d;

    return-void
.end method

.method private static agB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/d;)Lcom/xiaomi/account/data/l;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/xiaomi/accountsdk/account/d;->acv(Ljava/lang/String;)Lcom/xiaomi/account/data/l;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_9
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_a
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static agD(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo v0, "html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static agE(Lcom/xiaomi/accountsdk/utils/p;Lcom/xiaomi/accountsdk/request/f;)Lcom/xiaomi/accountsdk/request/f;
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adV()I

    move-result v0

    const/16 v3, 0x12e

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v2, "invalid response from server"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p0, v2}, Lcom/xiaomi/accountsdk/utils/p;->aic(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/f;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adV()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/request/f;->adY(I)V

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adU()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/f;->adS()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/f;->adT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/xiaomi/accountsdk/utils/p;->aic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-static {v2}, Lcom/xiaomi/accountsdk/request/O;->agD(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    const-string/jumbo v5, "failed to decrypt response"

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {v4, v5, v3, v1}, Lcom/xiaomi/accountsdk/request/InvalidResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v4

    :cond_3
    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/request/f;->adX(Ljava/util/Map;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/request/A;->afV()Lcom/xiaomi/accountsdk/request/A;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/A;->afX(Lcom/xiaomi/accountsdk/request/f;)V

    return-object v1
.end method

.method private static agy(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/p;Lcom/xiaomi/accountsdk/request/F;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/accountsdk/utils/EasyMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/accountsdk/utils/p;",
            "Lcom/xiaomi/accountsdk/request/F;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Lcom/xiaomi/accountsdk/request/F;->agj(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v0}, Lcom/xiaomi/accountsdk/utils/p;->aid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    invoke-direct {v1, v0}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method agA()Lcom/xiaomi/accountsdk/account/d;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/O;->YX:Lcom/xiaomi/accountsdk/account/d;

    return-object v0
.end method

.method agC(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/f;
    .locals 3

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->adz()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "passportCA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agA()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/d;->acw()V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "passportCA-Disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->adA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agA()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/account/d;->acx(Ljava/lang/Long;)V

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    const-string/jumbo v2, "PassportCA Disabled"

    invoke-direct {v1, v2}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/accountsdk/request/O;->YW:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v0
.end method

.method agz()Lcom/xiaomi/accountsdk/request/f;
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/O;->YZ:Lcom/xiaomi/accountsdk/request/M;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->agw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "https request should not use PassportCA"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/O;->YZ:Lcom/xiaomi/accountsdk/request/M;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->agv()Lcom/xiaomi/accountsdk/request/M;

    move-result-object v0

    iget-object v1, v0, Lcom/xiaomi/accountsdk/request/M;->YV:Lcom/xiaomi/accountsdk/request/R;

    iget-object v2, v1, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agA()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/O;->agB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/d;)Lcom/xiaomi/account/data/l;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/account/data/l;->mU()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v4, "_nonce"

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/h;->ahy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v4, "passport_ca_token"

    iget-object v5, v2, Lcom/xiaomi/account/data/l;->lH:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/xiaomi/accountsdk/request/R;->Zc:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v4, "caTag"

    const-string/jumbo v5, "noSafe"

    invoke-virtual {v3, v4, v5}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/xiaomi/accountsdk/utils/M;

    iget-object v4, v2, Lcom/xiaomi/account/data/l;->lG:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/xiaomi/accountsdk/utils/M;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v5, Lcom/xiaomi/accountsdk/request/U;

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/U;-><init>(Lcom/xiaomi/accountsdk/request/U;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/O;->agy(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/p;Lcom/xiaomi/accountsdk/request/F;)V

    iget-object v4, v1, Lcom/xiaomi/accountsdk/request/R;->Zd:Lcom/xiaomi/accountsdk/utils/EasyMap;

    new-instance v5, Lcom/xiaomi/accountsdk/request/W;

    invoke-direct {v5, v6}, Lcom/xiaomi/accountsdk/request/W;-><init>(Lcom/xiaomi/accountsdk/request/W;)V

    invoke-static {v4, v3, v5}, Lcom/xiaomi/accountsdk/request/O;->agy(Lcom/xiaomi/accountsdk/utils/EasyMap;Lcom/xiaomi/accountsdk/utils/p;Lcom/xiaomi/accountsdk/request/F;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/M;->agp()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/xiaomi/accountsdk/request/R;->url:Ljava/lang/String;

    iget-object v6, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v2, v2, Lcom/xiaomi/account/data/l;->lG:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Lcom/xiaomi/accountsdk/utils/h;->ahA(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/R;->Za:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string/jumbo v4, "_caSign"

    invoke-virtual {v1, v4, v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xiaomi/accountsdk/request/B;

    new-instance v2, Lcom/xiaomi/accountsdk/request/n;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/n;-><init>()V

    new-instance v4, Lcom/xiaomi/accountsdk/request/y;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/request/y;-><init>()V

    invoke-direct {v1, v0, v2, v4}, Lcom/xiaomi/accountsdk/request/B;-><init>(Lcom/xiaomi/accountsdk/request/M;Lcom/xiaomi/accountsdk/request/n;Lcom/xiaomi/accountsdk/request/V;)V

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/N;->execute()Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "no response from server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/account/exception/PassportCAException;

    const-string/jumbo v1, "null CA token"

    invoke-direct {v0, v1}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v3, v0}, Lcom/xiaomi/accountsdk/request/O;->agE(Lcom/xiaomi/accountsdk/utils/p;Lcom/xiaomi/accountsdk/request/f;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/xiaomi/accountsdk/request/f;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agA()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agA()Lcom/xiaomi/accountsdk/account/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/d;->act()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/O;->agz()Lcom/xiaomi/accountsdk/request/f;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/account/exception/PassportCAException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    new-instance v1, Lcom/xiaomi/account/exception/PassportCAException;

    const-string/jumbo v2, "null CA Manager"

    invoke-direct {v1, v2}, Lcom/xiaomi/account/exception/PassportCAException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/InvalidResponseException;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/account/exception/PassportCAException;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AccessDeniedException;)V

    throw v1

    :catch_3
    move-exception v0

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/request/O;->YY:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/request/O;->YY:Z

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/O;->agC(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/xiaomi/accountsdk/request/PassportRequestException;

    invoke-direct {v1, v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;-><init>(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)V

    throw v1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaomi/accountsdk/request/O;->YY:Z

    if-eqz v1, :cond_3

    :cond_2
    throw v0

    :cond_3
    iput-boolean v2, p0, Lcom/xiaomi/accountsdk/request/O;->YY:Z

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/O;->agC(Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;)Lcom/xiaomi/accountsdk/request/f;

    move-result-object v0

    return-object v0
.end method
