.class Lcom/xiaomi/accountsdk/request/I;
.super Ljava/lang/Object;
.source ""


# instance fields
.field YN:Ljava/lang/Long;

.field YO:Ljava/lang/String;

.field YP:Ljava/lang/Boolean;

.field YQ:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YO:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method agq(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    return-void
.end method

.method agr()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "1"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method ags(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/I;->YO:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    return-void
.end method

.method agt(Ljava/lang/Long;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "%d_%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "%d_"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/I;->YQ:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "_%d"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/I;->YN:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v2
.end method
