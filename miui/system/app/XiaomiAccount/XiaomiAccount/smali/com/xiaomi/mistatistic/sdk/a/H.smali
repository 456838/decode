.class public Lcom/xiaomi/mistatistic/sdk/a/H;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ahu:Lcom/xiaomi/mistatistic/sdk/a/H;

.field private static ahw:J

.field private static final ahx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ahv:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahw:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/mistatistic/sdk/a/u;-><init>(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahv:Landroid/os/Handler;

    return-void
.end method

.method public static a()Lcom/xiaomi/mistatistic/sdk/a/H;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahu:Lcom/xiaomi/mistatistic/sdk/a/H;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahu:Lcom/xiaomi/mistatistic/sdk/a/H;

    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/H;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/H;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahu:Lcom/xiaomi/mistatistic/sdk/a/H;

    goto :goto_0
.end method

.method private arn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "session_begin"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "last_deactivate"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ass(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "pv_path"

    const-string/jumbo v6, ""

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {p0, p1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/H;->ars(Landroid/content/Context;J)V

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_6

    sub-long v0, v8, v4

    sget-wide v10, Lcom/xiaomi/mistatistic/sdk/a/H;->ahw:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    if-nez v0, :cond_6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/a/H;->arq(Landroid/content/Context;JJ)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v6

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "session_begin"

    invoke-static {v1, v2, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {p0, p1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/H;->ars(Landroid/content/Context;J)V

    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/H;->aru(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/H;->art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "pv_path"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "source_path"

    const-string/jumbo v3, ""

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/xiaomi/mistatistic/sdk/a/H;->art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "source_path"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/data/g;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {p0, p1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/H;->ars(Landroid/content/Context;J)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v6}, Lcom/xiaomi/mistatistic/sdk/a/H;->arr(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v6, ""

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_8

    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/xiaomi/mistatistic/sdk/a/H;->arr(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v0, ""

    goto/16 :goto_4

    :cond_9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_6

    :catch_0
    move-exception v0

    const-string/jumbo v1, "processActActivated exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private arp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "last_deactivate"

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v0, v3, v6, v7}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p2, p1}, Lcom/xiaomi/mistatistic/sdk/a/H;->aru(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    :goto_1
    if-gez v4, :cond_4

    move v4, v3

    :cond_2
    :goto_2
    if-ltz v4, :cond_0

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/g;->a()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    cmp-long v3, v6, v10

    if-gtz v3, :cond_5

    move v3, v1

    :goto_3
    if-nez v3, :cond_0

    cmp-long v3, v8, v10

    if-gtz v3, :cond_6

    :goto_4
    if-nez v1, :cond_0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/data/g;->asP(Ljava/lang/Long;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/P;->arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "processActDeativated exception: "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahx:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/g;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/data/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4
.end method

.method private arq(Landroid/content/Context;JJ)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/N;->arA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/m;

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/data/m;-><init>(JJLjava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/P;->arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "last_deactivate"

    invoke-static {v0, v1, v8, v9}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asw(Landroid/content/Context;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string/jumbo v6, "NULL"

    goto :goto_0
.end method

.method private arr(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "source_path"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ad;->ast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/data/k;

    invoke-direct {v1, p2, v0}, Lcom/xiaomi/mistatistic/sdk/data/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/a/P;->arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    const-string/jumbo v0, "source_path"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pv_path"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/ad;->asx(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private ars(Landroid/content/Context;J)V
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/b;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/xiaomi/mistatistic/sdk/data/b;-><init>(JJ)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/P;->arL(Lcom/xiaomi/mistatistic/sdk/data/f;)V

    return-void
.end method

.method private art(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private aru(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-object p2

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method static synthetic arv(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaomi/mistatistic/sdk/a/H;->arq(Landroid/content/Context;JJ)V

    return-void
.end method

.method static synthetic arw(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/H;->arr(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic arx(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/H;->arn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ary(Lcom/xiaomi/mistatistic/sdk/a/H;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/H;->arp(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public arm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahv:Landroid/os/Handler;

    const v1, 0x1df5e77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/M;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/M;-><init>(Lcom/xiaomi/mistatistic/sdk/a/H;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    return-void

    :cond_0
    const-string/jumbo v0, "record pageStart without context."

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/aa;->asl(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public aro(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/e;->a()Lcom/xiaomi/mistatistic/sdk/a/e;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/a/af;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/mistatistic/sdk/a/af;-><init>(Lcom/xiaomi/mistatistic/sdk/a/H;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/mistatistic/sdk/a/e;->aqw(Lcom/xiaomi/mistatistic/sdk/a/L;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/H;->ahv:Landroid/os/Handler;

    const v1, 0x1df5e77

    sget-wide v2, Lcom/xiaomi/mistatistic/sdk/a/H;->ahw:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
