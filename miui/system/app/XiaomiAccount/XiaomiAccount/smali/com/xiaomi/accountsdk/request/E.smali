.class Lcom/xiaomi/accountsdk/request/E;
.super Lcom/xiaomi/accountsdk/request/V;
.source ""


# instance fields
.field private YK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private YL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/V;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public afH(I)V
    .locals 3

    const-string/jumbo v0, "Ip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "backupIpFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public afI(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/E;->afh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afJ(I)V
    .locals 0

    return-void
.end method

.method public afK()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "cachedIpFailed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public afL(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/E;->afh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public afM()V
    .locals 0

    return-void
.end method

.method public afN()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "dnsIp0Failed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public afO()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "http://dummyurl/cachedIpDiagonose?_ver=%s&cacheipnet=%s&cachedip=%s&dnsipnet=%s&dnsip=%s&finalnet=%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/E;->afh()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/E;->aff(Ljava/lang/String;)V

    return-void
.end method

.method public afR(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/E;->afh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public age()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "IpRequestSucceed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/E;->agi(Z)V

    return-void
.end method

.method public agf()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "IpRequestFailed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/E;->agi(Z)V

    return-void
.end method

.method public agg()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "IpRequestIOSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/E;->agi(Z)V

    return-void
.end method

.method public agh()V
    .locals 2

    const-string/jumbo v0, "Ip"

    const-string/jumbo v1, "IpRequestStarted"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/E;->afg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method agi(Z)V
    .locals 4

    const-string/jumbo v0, "http://dummyurl/IpDiagonose?_ver=%s&_ips=%s&_nets=%s&_ipResult=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/j;->XC:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/E;->YK:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/E;->YL:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/E;->aff(Ljava/lang/String;)V

    return-void
.end method
