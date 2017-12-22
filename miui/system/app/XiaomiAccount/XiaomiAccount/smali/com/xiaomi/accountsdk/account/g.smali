.class Lcom/xiaomi/accountsdk/account/g;
.super Lcom/xiaomi/accountsdk/request/u;
.source ""


# instance fields
.field private Xv:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/u;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/g;->Xv:J

    return-void
.end method


# virtual methods
.method acU(Lcom/xiaomi/account/data/l;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "http://dummyurl/getTokenDiagnosis?_ver=%s&_time=%s&_result=%s&hdid=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    new-instance v2, Lcom/xiaomi/passport/utils/y;

    invoke-direct {v2}, Lcom/xiaomi/passport/utils/y;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/passport/utils/y;->FZ()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public acV(Lcom/xiaomi/account/data/l;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/accountsdk/account/g;->Xv:J

    sub-long v2, v0, v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaomi/accountsdk/account/g;->acU(Lcom/xiaomi/account/data/l;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/account/g;->aff(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acW()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/account/g;->Xv:J

    return-void
.end method
