.class public Lcom/loc/bv;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aqG:Landroid/content/Context;

.field private static aqH:Z

.field private static aqI:Z

.field private static aqJ:I

.field private static aqK:Z

.field private static aqL:I

.field private static aqM:J

.field private static aqN:I

.field private static aqO:J

.field private static aqP:Z

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:J

.field private static j:J

.field private static l:I

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static t:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "\u63d0\u793a\u4fe1\u606f"

    sput-object v0, Lcom/loc/bv;->b:Ljava/lang/String;

    const-string/jumbo v0, "\u786e\u8ba4"

    sput-object v0, Lcom/loc/bv;->c:Ljava/lang/String;

    const-string/jumbo v0, "\u53d6\u6d88"

    sput-object v0, Lcom/loc/bv;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bv;->e:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bv;->f:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/bv;->g:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/bv;->h:Z

    sput-wide v2, Lcom/loc/bv;->i:J

    sput-wide v2, Lcom/loc/bv;->j:J

    sput-boolean v1, Lcom/loc/bv;->aqH:Z

    sput v1, Lcom/loc/bv;->l:I

    sput-boolean v1, Lcom/loc/bv;->aqI:Z

    sput v1, Lcom/loc/bv;->aqJ:I

    sput-boolean v1, Lcom/loc/bv;->aqK:Z

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/loc/bv;->p:Ljava/lang/String;

    const-string/jumbo v0, "1"

    sput-object v0, Lcom/loc/bv;->q:Ljava/lang/String;

    sput v4, Lcom/loc/bv;->aqL:I

    sput-wide v2, Lcom/loc/bv;->aqM:J

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->t:Ljava/lang/String;

    sput v4, Lcom/loc/bv;->aqN:I

    sput-wide v2, Lcom/loc/bv;->aqO:J

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    sput-boolean v1, Lcom/loc/bv;->aqP:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/loc/bv;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/loc/bv;->y:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/loc/bv;->h:Z

    return v0
.end method

.method public static declared-synchronized aDN(Landroid/content/Context;)Z
    .locals 5

    const-class v2, Lcom/loc/bv;

    monitor-enter v2

    :try_start_0
    sput-object p0, Lcom/loc/bv;->aqG:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "2.4.0"

    invoke-static {v1}, Lcom/loc/aH;->a(Ljava/lang/String;)Lcom/loc/O;

    move-result-object v1

    const-string/jumbo v3, "callamappro;fast;sdkupdate;sdkcoordinate;locate;opflag;exception;amappushflag"

    invoke-static {p0, v1, v3}, Lcom/loc/U;->awt(Landroid/content/Context;Lcom/loc/O;Ljava/lang/String;)Lcom/loc/as;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    :try_start_2
    invoke-static {v1}, Lcom/loc/bv;->aDP(Lcom/loc/as;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "getConfig"

    invoke-static {v1, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string/jumbo v0, ""

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "parse2String"

    invoke-static {v1, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static aDP(Lcom/loc/as;)Z
    .locals 12

    const/4 v10, -0x1

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/as;->and:Lorg/json/JSONObject;

    if-nez v0, :cond_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/loc/as;->ane:Lorg/json/JSONObject;

    if-nez v0, :cond_6

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/loc/as;->anc:Lorg/json/JSONObject;

    if-nez v0, :cond_a

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/loc/as;->anh:Lorg/json/JSONObject;

    if-nez v3, :cond_e

    :goto_3
    const-string/jumbo v0, "2.4.0"

    invoke-static {v0}, Lcom/loc/aH;->a(Ljava/lang/String;)Lcom/loc/O;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/as;->anj:Lcom/loc/bL;

    if-nez v3, :cond_22

    new-instance v3, Lcom/loc/bc;

    sget-object v4, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/loc/bc;-><init>(Landroid/content/Context;Lcom/loc/ah;Lcom/loc/O;)V

    invoke-virtual {v3}, Lcom/loc/bc;->a()V

    :goto_4
    iget-object v0, p0, Lcom/loc/as;->ank:Lcom/loc/bi;

    if-nez v0, :cond_25

    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/loc/as;->ani:Lcom/loc/aL;

    if-nez v0, :cond_26

    :goto_6
    iget-object v3, p0, Lcom/loc/as;->anf:Lorg/json/JSONObject;

    if-nez v3, :cond_27

    :cond_4
    :goto_7
    return v2

    :cond_5
    const-string/jumbo v3, "opflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "opflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->p:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "loadconfig"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    return v1

    :cond_6
    :try_start_1
    const-string/jumbo v3, "callamapflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :goto_8
    const-string/jumbo v3, "count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_9
    const-string/jumbo v3, "nowtime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_a
    sget v0, Lcom/loc/bv;->aqL:I

    if-eq v0, v10, :cond_1

    sget-wide v4, Lcom/loc/bv;->aqM:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_1

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "nowtime"

    const-wide/16 v6, 0x0

    invoke-static {v0, v3, v4, v6, v7}, Lcom/loc/aO;->aAI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sget-wide v6, Lcom/loc/bv;->aqM:J

    invoke-static {v6, v7, v4, v5}, Lcom/loc/bd;->aDu(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bv;->aDR(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v3, "callamapflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/bv;->q:Ljava/lang/String;

    goto :goto_8

    :cond_8
    const-string/jumbo v3, "count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/loc/bv;->aqL:I

    goto :goto_9

    :cond_9
    const-string/jumbo v3, "nowtime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/bv;->aqM:J

    goto :goto_a

    :cond_a
    const-string/jumbo v3, "amappushflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_b
    const-string/jumbo v3, "count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    :goto_c
    const-string/jumbo v3, "nowtime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    :goto_d
    sget v0, Lcom/loc/bv;->aqN:I

    if-eq v0, v10, :cond_2

    sget-wide v4, Lcom/loc/bv;->aqO:J

    cmp-long v0, v4, v8

    if-eqz v0, :cond_2

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v3, "pref"

    const-string/jumbo v4, "pushSerTime"

    const-wide/16 v6, 0x0

    invoke-static {v0, v3, v4, v6, v7}, Lcom/loc/aO;->aAI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    sget-wide v6, Lcom/loc/bv;->aqO:J

    invoke-static {v6, v7, v4, v5}, Lcom/loc/bd;->aDu(JJ)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bv;->aDS(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v3, "amappushflag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/loc/bv;->t:Ljava/lang/String;

    goto :goto_b

    :cond_c
    const-string/jumbo v3, "count"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/loc/bv;->aqN:I

    goto :goto_c

    :cond_d
    const-string/jumbo v3, "nowtime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/loc/bv;->aqO:J

    goto :goto_d

    :cond_e
    const-string/jumbo v0, "f"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_f
    :goto_e
    const-string/jumbo v0, "a"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_f
    const-string/jumbo v0, "o"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_10
    const-string/jumbo v0, "c"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_11
    const-string/jumbo v0, "i"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    :goto_12
    const-string/jumbo v0, "u"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_13
    const-string/jumbo v0, "t"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_14
    const-string/jumbo v0, ""

    sget-object v3, Lcom/loc/bv;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    const-string/jumbo v0, ""

    sget-object v3, Lcom/loc/bv;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_11
    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v0, "f"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    const-string/jumbo v0, "1"

    sget-object v4, Lcom/loc/bv;->y:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    goto :goto_e

    :cond_13
    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v4, "abcd"

    const-string/jumbo v5, "abc"

    const-wide/16 v6, 0x0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/loc/aO;->aAI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v8, v6, v4

    const-wide/32 v10, 0x36ee80

    cmp-long v0, v8, v10

    if-gtz v0, :cond_16

    move v0, v2

    :goto_15
    if-nez v0, :cond_14

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v8, "abcd"

    const-string/jumbo v9, "abc"

    invoke-static {v0, v8, v9, v6, v7}, Lcom/loc/aO;->aAH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_14
    cmp-long v0, v6, v4

    if-gtz v0, :cond_17

    move v0, v2

    :goto_16
    if-nez v0, :cond_15

    sub-long v8, v6, v4

    const-wide/32 v10, 0x36ee80

    cmp-long v0, v8, v10

    if-ltz v0, :cond_18

    move v0, v2

    :goto_17
    if-nez v0, :cond_15

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    :cond_15
    cmp-long v0, v6, v4

    if-ltz v0, :cond_19

    move v0, v2

    :goto_18
    if-nez v0, :cond_f

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/loc/bv;->y:Ljava/lang/String;

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v4, "abcd"

    const-string/jumbo v5, "abc"

    invoke-static {v0, v4, v5, v6, v7}, Lcom/loc/aO;->aAH(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_e

    :cond_16
    move v0, v1

    goto :goto_15

    :cond_17
    move v0, v1

    goto :goto_16

    :cond_18
    move v0, v1

    goto :goto_17

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1a
    const-string/jumbo v0, "a"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->b:Ljava/lang/String;

    goto/16 :goto_f

    :cond_1b
    const-string/jumbo v0, "o"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->c:Ljava/lang/String;

    goto/16 :goto_10

    :cond_1c
    const-string/jumbo v0, "c"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->d:Ljava/lang/String;

    goto/16 :goto_11

    :cond_1d
    const-string/jumbo v0, "i"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->e:Ljava/lang/String;

    goto/16 :goto_12

    :cond_1e
    const-string/jumbo v0, "u"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->f:Ljava/lang/String;

    goto/16 :goto_13

    :cond_1f
    const-string/jumbo v0, "t"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bv;->g:Ljava/lang/String;

    goto/16 :goto_14

    :cond_20
    sget-object v0, Lcom/loc/bv;->e:Ljava/lang/String;

    if-eqz v0, :cond_10

    goto/16 :goto_3

    :cond_21
    sget-object v0, Lcom/loc/bv;->f:Ljava/lang/String;

    if-eqz v0, :cond_11

    goto/16 :goto_3

    :cond_22
    iget-object v4, v3, Lcom/loc/bL;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/loc/bL;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/loc/bL;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_23
    new-instance v3, Lcom/loc/bc;

    sget-object v4, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v0}, Lcom/loc/bc;-><init>(Landroid/content/Context;Lcom/loc/ah;Lcom/loc/O;)V

    invoke-virtual {v3}, Lcom/loc/bc;->a()V

    goto/16 :goto_4

    :cond_24
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_23

    new-instance v6, Lcom/loc/ah;

    invoke-direct {v6, v5, v4, v3}, Lcom/loc/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/loc/bc;

    sget-object v4, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-direct {v3, v4, v6, v0}, Lcom/loc/bc;-><init>(Landroid/content/Context;Lcom/loc/ah;Lcom/loc/O;)V

    invoke-virtual {v3}, Lcom/loc/bc;->a()V

    goto/16 :goto_4

    :cond_25
    iget-object v3, v0, Lcom/loc/bi;->a:Ljava/lang/String;

    sput-object v3, Lcom/loc/bv;->w:Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/bi;->b:Ljava/lang/String;

    sput-object v0, Lcom/loc/bv;->x:Ljava/lang/String;

    sget-object v0, Lcom/loc/bv;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/loc/bv;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/loc/co;

    sget-object v3, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v4, "loc"

    sget-object v5, Lcom/loc/bv;->w:Ljava/lang/String;

    sget-object v6, Lcom/loc/bv;->x:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/loc/co;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/co;->a()V

    goto/16 :goto_5

    :cond_26
    iget-boolean v0, v0, Lcom/loc/aL;->anV:Z

    const-string/jumbo v3, "2.4.0"

    invoke-static {v3}, Lcom/loc/aH;->a(Ljava/lang/String;)Lcom/loc/O;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/loc/O;->a(Z)V

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/loc/a;->atY(Landroid/content/Context;Lcom/loc/O;)Lcom/loc/a;

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v0, "fs"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDQ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bW;

    move-result-object v4

    if-nez v4, :cond_28

    :goto_19
    const-string/jumbo v0, "us"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDQ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bW;

    move-result-object v4

    if-nez v4, :cond_2a

    :goto_1a
    const-string/jumbo v0, "rs"

    invoke-static {v3, v0}, Lcom/loc/bv;->aDQ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bW;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v0, v3, Lcom/loc/bW;->c:Ljava/lang/String;

    const-string/jumbo v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/loc/bv;->h:Z

    sget-boolean v0, Lcom/loc/bv;->h:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_2e

    :goto_1c
    :try_start_2
    iget-object v0, v3, Lcom/loc/bW;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    sput-wide v4, Lcom/loc/bv;->i:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v3, "AuthUtil"

    const-string/jumbo v4, "loadconfig part"

    invoke-static {v0, v3, v4}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_28
    iget-object v0, v4, Lcom/loc/bW;->c:Ljava/lang/String;

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    :goto_1d
    sput-boolean v0, Lcom/loc/bv;->aqH:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, v4, Lcom/loc/bW;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bv;->l:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_19

    :catch_2
    move-exception v0

    :try_start_5
    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadconfig part2"

    invoke-static {v0, v4, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_29
    move v0, v2

    goto :goto_1d

    :cond_2a
    iget-object v0, v4, Lcom/loc/bW;->c:Ljava/lang/String;

    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_1e
    sput-boolean v0, Lcom/loc/bv;->aqI:Z

    iget-object v0, v4, Lcom/loc/bW;->a:Ljava/lang/String;

    const-string/jumbo v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    move v0, v2

    :goto_1f
    sput-boolean v0, Lcom/loc/bv;->aqK:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :try_start_6
    iget-object v0, v4, Lcom/loc/bW;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/loc/bv;->aqJ:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1a

    :catch_3
    move-exception v0

    :try_start_7
    const-string/jumbo v4, "AuthUtil"

    const-string/jumbo v5, "loadconfig part1"

    invoke-static {v0, v4, v5}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_2b
    move v0, v2

    goto :goto_1e

    :cond_2c
    move v0, v1

    goto :goto_1f

    :cond_2d
    move v0, v2

    goto :goto_1b

    :cond_2e
    invoke-static {}, Lcom/loc/bd;->b()J

    move-result-wide v4

    sput-wide v4, Lcom/loc/bv;->j:J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1c
.end method

.method private static aDQ(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/loc/bW;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/loc/bW;

    invoke-direct {v1}, Lcom/loc/bW;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string/jumbo v0, "b"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_2
    const-string/jumbo v0, "t"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    const-string/jumbo v0, "st"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_4
    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "b"

    invoke-static {v2, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bW;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_5
    const-string/jumbo v2, "AuthUtil"

    const-string/jumbo v3, "getLocateObj"

    invoke-static {v0, v2, v3}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string/jumbo v0, "t"

    invoke-static {v2, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bW;->b:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "st"

    invoke-static {v2, v0}, Lcom/loc/bv;->aDO(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/bW;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5
.end method

.method private static aDR(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/bv;->aqM:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget v1, Lcom/loc/bv;->aqL:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v0}, Lcom/loc/aO;->aAG(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "nowtime"

    sget-wide v2, Lcom/loc/bv;->aqM:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "nowtime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string/jumbo v1, "count"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private static aDS(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string/jumbo v0, "pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-wide v2, Lcom/loc/bv;->aqO:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-string/jumbo v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    sget v1, Lcom/loc/bv;->aqN:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "pushCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-static {v0}, Lcom/loc/aO;->aAG(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v1, "pushSerTime"

    sget-wide v2, Lcom/loc/bv;->aqO:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "pushSerTime"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AuthUtil"

    const-string/jumbo v2, "resetPrefsBind"

    invoke-static {v0, v1, v2}, Lcom/loc/aH;->aAq(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_3
    const-string/jumbo v1, "pushCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public static b()J
    .locals 2

    sget-wide v0, Lcom/loc/bv;->i:J

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-wide v0, Lcom/loc/bv;->j:J

    return-wide v0
.end method

.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/loc/bv;->aqH:Z

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcom/loc/bv;->l:I

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/loc/bv;->aqI:Z

    return v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lcom/loc/bv;->aqJ:I

    return v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/loc/bv;->aqK:Z

    return v0
.end method

.method public static i()Z
    .locals 2

    const-string/jumbo v0, "1"

    sget-object v1, Lcom/loc/bv;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/loc/M;->alw:Z

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/bv;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static p()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "1"

    sget-object v1, Lcom/loc/bv;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/loc/bv;->aqL:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    sget-wide v0, Lcom/loc/bv;->aqM:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "nowtime"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/loc/aO;->aAI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bv;->aqM:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/bd;->aDu(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "count"

    invoke-static {v0, v1, v2, v4}, Lcom/loc/aO;->aAK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/loc/bv;->aqL:I

    if-lt v0, v1, :cond_4

    return v4

    :cond_3
    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bv;->aDR(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "count"

    invoke-static {v0, v1, v2, v5}, Lcom/loc/aO;->aAJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "count"

    invoke-static {v1, v2, v3, v0}, Lcom/loc/aO;->aAJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5
.end method

.method public static q()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "1"

    sget-object v1, Lcom/loc/bv;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/loc/bv;->aqN:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_0
    return v5

    :cond_1
    return v4

    :cond_2
    sget-wide v0, Lcom/loc/bv;->aqO:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushSerTime"

    invoke-static {v0, v1, v2, v6, v7}, Lcom/loc/aO;->aAI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sget-wide v2, Lcom/loc/bv;->aqO:J

    invoke-static {v2, v3, v0, v1}, Lcom/loc/bd;->aDu(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushCount"

    invoke-static {v0, v1, v2, v4}, Lcom/loc/aO;->aAK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sget v1, Lcom/loc/bv;->aqN:I

    if-lt v0, v1, :cond_4

    return v4

    :cond_3
    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/bv;->aDS(Landroid/content/Context;)V

    sget-object v0, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v1, "pref"

    const-string/jumbo v2, "pushCount"

    invoke-static {v0, v1, v2, v5}, Lcom/loc/aO;->aAJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/loc/bv;->aqG:Landroid/content/Context;

    const-string/jumbo v2, "pref"

    const-string/jumbo v3, "pushCount"

    invoke-static {v1, v2, v3, v0}, Lcom/loc/aO;->aAJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return v5
.end method

.method public static declared-synchronized r()Z
    .locals 3

    const-class v1, Lcom/loc/bv;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "1"

    sget-object v2, Lcom/loc/bv;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
