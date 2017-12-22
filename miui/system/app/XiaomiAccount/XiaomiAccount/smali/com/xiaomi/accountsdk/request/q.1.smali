.class final Lcom/xiaomi/accountsdk/request/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ye:Lcom/xiaomi/accountsdk/request/n;

.field final synthetic Yf:Ljava/lang/String;

.field final synthetic Yg:Ljava/lang/String;

.field final synthetic Yh:Ljava/lang/String;

.field final synthetic Yi:Lcom/xiaomi/accountsdk/request/p;

.field final synthetic Yj:Ljava/lang/String;

.field final synthetic Yk:J


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/p;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/q;->Yf:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/q;->Yg:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/request/q;->Yh:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/request/q;->Yi:Lcom/xiaomi/accountsdk/request/p;

    iput-object p6, p0, Lcom/xiaomi/accountsdk/request/q;->Yj:Ljava/lang/String;

    iput-wide p7, p0, Lcom/xiaomi/accountsdk/request/q;->Yk:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/q;->Yf:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/q;->Yg:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/q;->Yh:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/q;->Yi:Lcom/xiaomi/accountsdk/request/p;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/n;->aeF(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/p;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/q;->Yj:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/q;->Yi:Lcom/xiaomi/accountsdk/request/p;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/q;->Yj:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/request/p;->aeT(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "ping: network changed from %s to %s, will NOT update anything"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/q;->Yj:Ljava/lang/String;

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/q;->Yf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/n;->aeN(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/q;->Yi:Lcom/xiaomi/accountsdk/request/p;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/accountsdk/request/p;->aeR(J)V

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/accountsdk/request/v;->afk()J

    move-result-wide v4

    mul-long/2addr v2, v4

    iget-wide v4, p0, Lcom/xiaomi/accountsdk/request/q;->Yk:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/q;->Yf:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/request/n;->aeL(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/q;->Ye:Lcom/xiaomi/accountsdk/request/n;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/q;->Yf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/n;->aeN(Ljava/lang/String;)V

    goto :goto_0
.end method
