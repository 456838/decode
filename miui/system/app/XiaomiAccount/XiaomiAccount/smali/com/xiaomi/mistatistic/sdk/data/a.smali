.class public Lcom/xiaomi/mistatistic/sdk/data/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aic:J

.field private aid:J

.field private aie:I

.field private aif:Ljava/lang/String;

.field private aig:Ljava/lang/String;

.field private aih:J

.field private aii:J

.field private aij:Ljava/lang/String;

.field private aik:Ljava/lang/String;

.field private ail:Ljava/lang/String;

.field private aim:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aih:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aic:J

    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aie:I

    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aif:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/a;->asH()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asE(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->url:Ljava/lang/String;

    return-void
.end method

.method public asF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->url:Ljava/lang/String;

    return-object v0
.end method

.method public asG(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aid:J

    return-void
.end method

.method public asH()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/a/N;->arA(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    const-string/jumbo v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "NULL"

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/v;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aij:Ljava/lang/String;

    goto :goto_0
.end method

.method public asI()Lorg/json/JSONObject;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "net"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aic:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_5

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    const-string/jumbo v2, "cost"

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aic:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aid:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_6

    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    const-string/jumbo v2, "first_byte_t"

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aid:J

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aie:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    :goto_2
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aif:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_3
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aij:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_4
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v0, "flow"

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    if-ne v0, v1, :cond_a

    :cond_4
    const-string/jumbo v0, "flow_status"

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aik:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_6
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->ail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_7
    const-string/jumbo v0, "t"

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aih:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v3

    :cond_5
    move v2, v0

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_1

    :cond_7
    const-string/jumbo v2, "code"

    iget v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aie:I

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    const-string/jumbo v2, "exception"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aif:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_9
    const-string/jumbo v2, "op"

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aij:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_a
    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_5

    :cond_b
    const-string/jumbo v0, "rid"

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aik:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    const-string/jumbo v0, "dns"

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->ail:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7
.end method

.method public asJ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aik:Ljava/lang/String;

    return-void
.end method

.method public asK(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->ail:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/xiaomi/mistatistic/sdk/data/a;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/xiaomi/mistatistic/sdk/data/a;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aig:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aif:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aif:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->ail:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->ail:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aie:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aie:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aic:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aic:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aih:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aih:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aii:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    iget v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aim:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aik:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aik:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/a;->aid:J

    iget-wide v4, p1, Lcom/xiaomi/mistatistic/sdk/data/a;->aid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
