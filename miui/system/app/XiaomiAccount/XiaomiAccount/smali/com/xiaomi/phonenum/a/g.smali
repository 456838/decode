.class public Lcom/xiaomi/phonenum/a/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/phonenum/a/h;


# static fields
.field private static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field adA:Ljava/lang/String;

.field private adB:Lcom/xiaomi/phonenum/a/t;

.field adC:Landroid/content/Context;

.field adD:Lcom/xiaomi/phonenum/utils/s;

.field private adE:Lcom/xiaomi/phonenum/utils/n;

.field ady:Lcom/xiaomi/phonenum/utils/a;

.field adz:Lcom/xiaomi/phonenum/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/phonenum/a/g;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/phonenum/a/t;Lcom/xiaomi/phonenum/utils/a;Lcom/xiaomi/phonenum/c/j;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/phonenum/a/t;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/xiaomi/phonenum/utils/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/xiaomi/phonenum/c/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/phonenum/utils/p;->amM()Lcom/xiaomi/phonenum/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/g;->adC:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/phonenum/a/g;->adB:Lcom/xiaomi/phonenum/a/t;

    iput-object p2, p0, Lcom/xiaomi/phonenum/a/g;->adA:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    iput-object p5, p0, Lcom/xiaomi/phonenum/a/g;->adz:Lcom/xiaomi/phonenum/c/j;

    return-void
.end method

.method private anv(ILcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/bean/a;
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    iget-wide v2, p2, Lcom/xiaomi/phonenum/a/m;->adQ:J

    invoke-interface {v0, p1, v2, v3}, Lcom/xiaomi/phonenum/utils/a;->alW(IJ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/g;->adB:Lcom/xiaomi/phonenum/a/t;

    invoke-virtual {p2, v2}, Lcom/xiaomi/phonenum/a/m;->anz(Lcom/xiaomi/phonenum/a/t;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->ach:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/bean/Error;->alF(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acp:Lcom/xiaomi/phonenum/bean/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeout-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/xiaomi/phonenum/a/m;->adQ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/bean/Error;->alF(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acl:Lcom/xiaomi/phonenum/bean/Error;

    const-string/jumbo v1, "waitForService"

    invoke-virtual {v0, v1}, Lcom/xiaomi/phonenum/bean/Error;->alF(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/phonenum/a/s;

    add-int/lit8 v2, v2, 0x1

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v5, "ObtainHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_strategy_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/xiaomi/phonenum/a/s;->ael:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/xiaomi/phonenum/a/s;->aem:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/a/s;->ann(I)Lcom/xiaomi/phonenum/bean/a;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    if-nez v4, :cond_4

    :cond_2
    if-nez v4, :cond_5

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v5, "ObtainHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "slotId_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_strategy_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Lcom/xiaomi/phonenum/utils/n;->amE(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v4, "ObtainHandler"

    const-string/jumbo v5, "obtain method is not implement, next"

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/phonenum/utils/n;->amB(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v4, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v5, "ObtainHandler"

    const-string/jumbo v6, "obtainer obtain with IOException, continue"

    invoke-interface {v4, v5, v6, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    iget v0, v4, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    sget-object v5, Lcom/xiaomi/phonenum/bean/Error;->aca:Lcom/xiaomi/phonenum/bean/Error;

    iget v5, v5, Lcom/xiaomi/phonenum/bean/Error;->code:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adC:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/phonenum/d/a;->aom(Landroid/content/Context;)Lcom/xiaomi/phonenum/d/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/xiaomi/phonenum/d/a;->aon(Lcom/xiaomi/phonenum/bean/a;)V

    return-object v4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Lcom/xiaomi/phonenum/bean/a;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v4, Lcom/xiaomi/phonenum/bean/a;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static synthetic anw(Lcom/xiaomi/phonenum/a/g;)Lcom/xiaomi/phonenum/utils/n;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    return-object v0
.end method


# virtual methods
.method public ann(I)Lcom/xiaomi/phonenum/bean/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/xiaomi/phonenum/a/g;->anr(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method public anr(IZLcom/xiaomi/phonenum/utils/b;)Lcom/xiaomi/phonenum/bean/a;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v1}, Lcom/xiaomi/phonenum/utils/a;->alX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v0, p1}, Lcom/xiaomi/phonenum/utils/a;->alO(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    invoke-interface {v0}, Lcom/xiaomi/phonenum/utils/a;->alU()Lcom/xiaomi/phonenum/utils/s;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adD:Lcom/xiaomi/phonenum/utils/s;

    if-nez p3, :cond_4

    :goto_0
    :try_start_0
    new-instance v0, Lcom/xiaomi/phonenum/a/o;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/a/o;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p0}, Lcom/xiaomi/phonenum/a/o;->anK(IZLcom/xiaomi/phonenum/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/a/g;->ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez p3, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/g;->adD:Lcom/xiaomi/phonenum/utils/s;

    invoke-interface {v1, v2}, Lcom/xiaomi/phonenum/utils/a;->alV(Lcom/xiaomi/phonenum/utils/s;)V

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->ack:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->ace:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Lcom/xiaomi/phonenum/a/o;

    invoke-direct {v0}, Lcom/xiaomi/phonenum/a/o;-><init>()V

    invoke-virtual {v0, p1, v2, p0}, Lcom/xiaomi/phonenum/a/o;->anK(IZLcom/xiaomi/phonenum/a/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/a/g;->ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Lcom/xiaomi/phonenum/a/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/phonenum/a/k;-><init>(Lcom/xiaomi/phonenum/a/g;)V

    invoke-virtual {p3, v0}, Lcom/xiaomi/phonenum/utils/b;->alY(Lcom/xiaomi/phonenum/utils/A;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Lcom/xiaomi/phonenum/utils/b;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-nez p3, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/phonenum/a/g;->ady:Lcom/xiaomi/phonenum/utils/a;

    iget-object v2, p0, Lcom/xiaomi/phonenum/a/g;->adD:Lcom/xiaomi/phonenum/utils/s;

    invoke-interface {v1, v2}, Lcom/xiaomi/phonenum/utils/a;->alV(Lcom/xiaomi/phonenum/utils/s;)V

    :goto_2
    throw v0

    :cond_7
    invoke-virtual {p3}, Lcom/xiaomi/phonenum/utils/b;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2
.end method

.method ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/phonenum/a/g;->ant(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0
.end method

.method ant(ILjava/lang/String;Z)Lcom/xiaomi/phonenum/bean/a;
    .locals 8

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "phoneNumber"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "obtainStrategy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "sendUniKey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result not support"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/phonenum/a/g;->adE:Lcom/xiaomi/phonenum/utils/n;

    const-string/jumbo v2, "ObtainHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsePhoneNumberResult error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaomi/phonenum/utils/n;->amD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/xiaomi/phonenum/bean/Error;->acd:Lcom/xiaomi/phonenum/bean/Error;

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/Error;->alE()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v2}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaomi/phonenum/bean/b;->alo(I)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    const-string/jumbo v2, "desc"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/bean/b;->all(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "number"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "numberHash"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "iccid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "copywriter"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "operatorLink"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/xiaomi/phonenum/bean/b;

    invoke-direct {v6}, Lcom/xiaomi/phonenum/bean/b;-><init>()V

    invoke-virtual {v6, v2}, Lcom/xiaomi/phonenum/bean/b;->alj(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/xiaomi/phonenum/bean/b;->alk(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/phonenum/bean/b;->aln(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/xiaomi/phonenum/bean/b;->alm(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/phonenum/bean/b;->alr(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/bean/b;->als(Ljava/lang/String;)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaomi/phonenum/bean/b;->alp(Z)Lcom/xiaomi/phonenum/bean/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/bean/b;->build()Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v1, Lcom/xiaomi/phonenum/a/m;

    invoke-direct {v1, v0, p0}, Lcom/xiaomi/phonenum/a/m;-><init>(Lorg/json/JSONObject;Lcom/xiaomi/phonenum/a/g;)V

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/g;->adC:Landroid/content/Context;

    const-string/jumbo v2, "verifyExpireTime"

    iget-wide v4, v1, Lcom/xiaomi/phonenum/a/m;->adR:J

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/phonenum/utils/c;->ama(Landroid/content/Context;Ljava/lang/String;J)V

    iget-wide v2, v1, Lcom/xiaomi/phonenum/a/m;->adT:J

    invoke-static {v2, v3}, Lcom/xiaomi/phonenum/c/d;->aoc(J)V

    iget-wide v2, v1, Lcom/xiaomi/phonenum/a/m;->adS:J

    invoke-static {v2, v3}, Lcom/xiaomi/phonenum/c/d;->aod(J)V

    iget-object v0, v1, Lcom/xiaomi/phonenum/a/m;->adP:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/xiaomi/phonenum/a/g;->anv(ILcom/xiaomi/phonenum/a/m;)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, v1, Lcom/xiaomi/phonenum/a/m;->adP:Lorg/json/JSONObject;

    const-string/jumbo v2, "followup"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "request"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/phonenum/a/g;->anu(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    sget-object v3, Lcom/xiaomi/phonenum/a/g;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/xiaomi/phonenum/a/p;

    invoke-direct {v4, p0, p1, v0, v2}, Lcom/xiaomi/phonenum/a/p;-><init>(Lcom/xiaomi/phonenum/a/g;ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "waitTime"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "followup"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/xiaomi/phonenum/a/c;

    invoke-direct {v4, v1, v2, v3, v0}, Lcom/xiaomi/phonenum/a/c;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    new-instance v0, Lcom/xiaomi/phonenum/a/i;

    invoke-direct {v0, v4, p0}, Lcom/xiaomi/phonenum/a/i;-><init>(Lcom/xiaomi/phonenum/a/c;Lcom/xiaomi/phonenum/a/g;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/phonenum/a/i;->ann(I)Lcom/xiaomi/phonenum/bean/a;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v1, "dataRequest"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "followup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/phonenum/a/g;->anu(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/phonenum/a/a;

    iget-object v3, p0, Lcom/xiaomi/phonenum/a/g;->adz:Lcom/xiaomi/phonenum/c/j;

    invoke-direct {v2, v3}, Lcom/xiaomi/phonenum/a/a;-><init>(Lcom/xiaomi/phonenum/c/j;)V

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaomi/phonenum/a/a;->ang(ILcom/xiaomi/phonenum/c/h;Ljava/lang/String;)Lcom/xiaomi/phonenum/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/phonenum/c/a;->aer:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/phonenum/a/g;->ans(ILjava/lang/String;)Lcom/xiaomi/phonenum/bean/a;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method anu(Lorg/json/JSONObject;)Lcom/xiaomi/phonenum/c/h;
    .locals 5

    const/4 v0, 0x1

    const-string/jumbo v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "followRedirects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v2, "headers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/phonenum/utils/o;->amL(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "formBody"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/phonenum/utils/o;->amL(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/phonenum/c/c;

    invoke-direct {v4}, Lcom/xiaomi/phonenum/c/c;-><init>()V

    invoke-virtual {v4, v1}, Lcom/xiaomi/phonenum/c/c;->url(Ljava/lang/String;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaomi/phonenum/c/c;->anZ(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/phonenum/c/c;->aoa(Ljava/util/Map;)Lcom/xiaomi/phonenum/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/phonenum/c/c;->aob(Z)Lcom/xiaomi/phonenum/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/phonenum/c/c;->build()Lcom/xiaomi/phonenum/c/h;

    move-result-object v0

    return-object v0
.end method
