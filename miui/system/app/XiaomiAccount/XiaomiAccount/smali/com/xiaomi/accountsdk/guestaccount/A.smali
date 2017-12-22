.class Lcom/xiaomi/accountsdk/guestaccount/A;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final Pb:Landroid/content/Context;

.field private Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

.field private Pd:Lcom/xiaomi/accountsdk/guestaccount/d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/a;

    invoke-direct {v0, p1}, Lcom/xiaomi/accountsdk/guestaccount/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/z;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/z;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pd:Lcom/xiaomi/accountsdk/guestaccount/d;

    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pb:Landroid/content/Context;

    return-void
.end method

.method static UG(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/A;->UL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://visitor.preview.n.xiaomi.net/visitor/login"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://v.id.mi.com/visitor/login"

    goto :goto_0
.end method

.method static UI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/accountsdk/guestaccount/A;->UL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://visitor.preview.n.xiaomi.net/visitor/register"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "https://v.id.mi.com/visitor/register"

    goto :goto_0
.end method

.method static UL(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "staging.flag"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private UM()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "macAddress"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/b;->TT()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/K;->ajw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "bluetooth"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    invoke-interface {v2}, Lcom/xiaomi/accountsdk/guestaccount/b;->TR()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/K;->ajw(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private UN(Lcom/xiaomi/accountsdk/guestaccount/e;)Lcom/xiaomi/accountsdk/guestaccount/y;
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->Oh:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rawresponse.responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    iget v2, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->Oh:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0

    :cond_2
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ok"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0

    :cond_3
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0

    :cond_4
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/xiaomi/accountsdk/guestaccount/e;->Oj:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Lcom/xiaomi/accountsdk/guestaccount/y;

    invoke-direct {v3, v1, v2, v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GuestAccountOnlineFetch"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private UO(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/accountsdk/guestaccount/y;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pd:Lcom/xiaomi/accountsdk/guestaccount/d;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/guestaccount/d;->jt(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/guestaccount/A;->UN(Lcom/xiaomi/accountsdk/guestaccount/e;)Lcom/xiaomi/accountsdk/guestaccount/y;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountOnlineFetch"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "GuestAccountOnlineFetch"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/y;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/xiaomi/accountsdk/guestaccount/y;-><init>(Ljava/lang/Integer;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/xiaomi/accountsdk/guestaccount/y;)V

    return-object v0
.end method


# virtual methods
.method UB(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 6

    iget-object v0, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "guestAccount.callback == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pd:Lcom/xiaomi/accountsdk/guestaccount/d;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NF:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/d;->get(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/e;

    move-result-object v3

    iget v0, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rawresponse.responseCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountOnlineFetch"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_1
    iget v0, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget v1, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->code:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    const-string/jumbo v1, "serviceToken"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v1, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    const-string/jumbo v2, "cVisitorId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/guestaccount/A;->UK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/guestaccount/e;->Oi:Ljava/util/Map;

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/xiaomi/accountsdk/guestaccount/A;->UH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    iget-object v5, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NE:Ljava/lang/String;

    :cond_5
    invoke-virtual {v4, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v1

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method UC(Lcom/xiaomi/accountsdk/guestaccount/b;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "hardwareInfoFetcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    return-void
.end method

.method UD(Lcom/xiaomi/accountsdk/guestaccount/d;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pd:Lcom/xiaomi/accountsdk/guestaccount/d;

    return-void
.end method

.method UE(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "guestAccount.sid == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "guestAccount.userId == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "guestAccount.passToken == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pb:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/guestaccount/A;->UG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "sid"

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "visitorId"

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "callback"

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string/jumbo v3, "nonce"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/utils/K;->ajq(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    invoke-interface {v3}, Lcom/xiaomi/accountsdk/guestaccount/b;->TS()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "visitorDeviceId"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "visitorSdkVersion"

    const-string/jumbo v5, "0.0.4"

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "visitorPassToken"

    iget-object v5, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NG:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string/jumbo v5, "POST"

    const-string/jumbo v6, "BEYBuDbVZqYHzAVT+TAAAA=="

    invoke-static {v5, v1, v3, v6}, Lcom/xiaomi/accountsdk/utils/K;->ajr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "_sign"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, v1, v2, v4}, Lcom/xiaomi/accountsdk/guestaccount/A;->UO(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/y;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OZ:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object v1, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OZ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OY:Lorg/json/JSONObject;

    const-string/jumbo v3, "visitorId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "cVisitorId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "visitorPassToken"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/xiaomi/accountsdk/guestaccount/A;->UJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->Pa:Lorg/json/JSONObject;

    if-nez v7, :cond_5

    :goto_0
    iget-object v1, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaomi/accountsdk/guestaccount/A;->UK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/xiaomi/accountsdk/guestaccount/A;->UH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "callback"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    invoke-virtual {v8, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    iget-object v4, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;->NK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tq(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_5
    iget-object v0, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->Pa:Lorg/json/JSONObject;

    const-string/jumbo v1, "ssecurity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountOnlineFetch"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Os:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0
.end method

.method UF(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/c;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->NN:Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    invoke-interface {v1}, Lcom/xiaomi/accountsdk/guestaccount/b;->iZ()Lcom/xiaomi/accountsdk/guestaccount/data/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/guestaccount/A;->UM()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pb:Landroid/content/Context;

    invoke-static {v4}, Lcom/xiaomi/accountsdk/guestaccount/A;->UI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/accountsdk/guestaccount/A;->Pc:Lcom/xiaomi/accountsdk/guestaccount/b;

    invoke-interface {v5}, Lcom/xiaomi/accountsdk/guestaccount/b;->TS()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v7, "visitorType"

    iget v8, p1, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->serverValue:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "sid"

    invoke-virtual {v6, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "psid"

    invoke-virtual {v6, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "appPackage"

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "clientInfo"

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "callback"

    invoke-virtual {v6, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string/jumbo v2, "nonce"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/xiaomi/accountsdk/utils/K;->ajq(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "visitorDeviceId"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "visitorSdkVersion"

    const-string/jumbo v5, "0.0.4"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;->NC:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;->ND:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string/jumbo v3, "fidNonce"

    iget-object v5, v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;->NC:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "fidNonceSign"

    iget-object v1, v1, Lcom/xiaomi/accountsdk/guestaccount/data/a;->ND:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1, v6}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    const-string/jumbo v3, "POST"

    const-string/jumbo v5, "BEYBuDbVZqYHzAVT+TAAAA=="

    invoke-static {v3, v4, v1, v5}, Lcom/xiaomi/accountsdk/utils/K;->ajr(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "_sign"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct {p0, v4, v6, v2}, Lcom/xiaomi/accountsdk/guestaccount/A;->UO(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/accountsdk/guestaccount/y;

    move-result-object v1

    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OZ:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    new-instance v0, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    iget-object v1, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OZ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->setErrorCode(I)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v2, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->OY:Lorg/json/JSONObject;

    const-string/jumbo v3, "visitorType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;->To(I)Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;

    move-result-object v3

    if-nez v3, :cond_5

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Os:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0

    :cond_5
    const-string/jumbo v4, "visitorPassToken"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "visitorId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "cVisitorId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/A;->UJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->Pa:Lorg/json/JSONObject;

    if-nez v8, :cond_6

    :goto_0
    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/A;->UK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/xiaomi/accountsdk/guestaccount/A;->UH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "callback"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/xiaomi/accountsdk/guestaccount/data/d;

    invoke-direct {v9}, Lcom/xiaomi/accountsdk/guestaccount/data/d;-><init>()V

    invoke-virtual {v9, v5}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ty(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tp(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tv(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tu(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tt(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tr(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tx(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccountType;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tq(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Tw(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->Ts(Ljava/lang/String;)Lcom/xiaomi/accountsdk/guestaccount/data/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/guestaccount/data/d;->build()Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/guestaccount/data/c;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/guestaccount/data/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/guestaccount/data/c;->Tm(Lcom/xiaomi/accountsdk/guestaccount/data/GuestAccount;)Lcom/xiaomi/accountsdk/guestaccount/data/c;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, v1, Lcom/xiaomi/accountsdk/guestaccount/y;->Pa:Lorg/json/JSONObject;

    const-string/jumbo v1, "ssecurity"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GuestAccountOnlineFetch"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->aho(Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/accountsdk/guestaccount/j;->Os:Lcom/xiaomi/accountsdk/guestaccount/data/c;

    return-object v0
.end method

.method UH(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_ph"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method UJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_serviceToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method UK(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_slh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
