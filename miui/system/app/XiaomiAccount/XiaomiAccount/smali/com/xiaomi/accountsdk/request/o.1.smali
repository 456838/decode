.class Lcom/xiaomi/accountsdk/request/o;
.super Lcom/xiaomi/accountsdk/request/u;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/u;-><init>()V

    return-void
.end method


# virtual methods
.method public aeP()V
    .locals 2

    const-string/jumbo v0, "backupIpDiagnosis"

    const-string/jumbo v1, "PullingBackupIpChanged"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/o;->afg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aeQ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    const-string/jumbo v1, "http://dummyurl/backupIpDiagonose?_ver=%s&_ips=%s&_nets=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/o;->afh()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/o;->aff(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
