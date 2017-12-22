.class final Lcom/xiaomi/accountsdk/request/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Yl:Lcom/xiaomi/accountsdk/request/n;

.field final synthetic Ym:Ljava/lang/String;

.field final synthetic Yn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/r;->Yl:Lcom/xiaomi/accountsdk/request/n;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/r;->Ym:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/request/r;->Yn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/r;->Yl:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/r;->Ym:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "backupList: network changed from %s to %s, will NOT update anything"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/r;->Ym:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/o;->aeP()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/r;->Yl:Lcom/xiaomi/accountsdk/request/n;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/r;->Yn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaomi/accountsdk/request/n;->aew(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/accountsdk/request/o;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/o;-><init>()V

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/o;->aeQ(Ljava/util/List;)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/r;->Yl:Lcom/xiaomi/accountsdk/request/n;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/r;->Yn:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaomi/accountsdk/request/n;->aeI(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
