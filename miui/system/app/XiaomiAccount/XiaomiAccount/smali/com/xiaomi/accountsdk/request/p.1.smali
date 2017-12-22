.class Lcom/xiaomi/accountsdk/request/p;
.super Lcom/xiaomi/accountsdk/request/u;
.source ""


# instance fields
.field private Ya:Ljava/lang/String;

.field private Yb:Ljava/lang/String;

.field private Yc:Ljava/lang/String;

.field private final Yd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/p;->Yb:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/p;->Yc:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/accountsdk/request/p;->Ya:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aeR(J)V
    .locals 5

    const-string/jumbo v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_coef=%d&cachedip=%s&cachediptime=%d&dnsip=%s&dnsiptime=%d&backupip0=%s&backupip0time=%d"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Yb:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/p;->Yb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Yc:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/p;->Yc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Ya:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/p;->Ya:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/p;->aff(Ljava/lang/String;)V

    return-void
.end method

.method public aeS(JJ)V
    .locals 5

    const-string/jumbo v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_time=%d&_thres=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/p;->aff(Ljava/lang/String;)V

    return-void
.end method

.method public aeT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_netOld=%s&_netNew=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/p;->aff(Ljava/lang/String;)V

    return-void
.end method

.method public aeU(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    const-wide/16 v2, -0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public aeV(Ljava/lang/String;ZJ)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/p;->Yd:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const-wide/16 p3, -0x1

    goto :goto_0
.end method

.method public aeW(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/p;->Ya:Ljava/lang/String;

    return-void
.end method

.method public aeX(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/p;->Yb:Ljava/lang/String;

    return-void
.end method

.method public aeY(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/p;->Yc:Ljava/lang/String;

    return-void
.end method
