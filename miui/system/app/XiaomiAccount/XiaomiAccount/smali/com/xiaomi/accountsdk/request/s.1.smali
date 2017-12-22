.class final Lcom/xiaomi/accountsdk/request/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Yo:Lcom/xiaomi/accountsdk/request/n;

.field final synthetic Yp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/n;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/s;->Yo:Lcom/xiaomi/accountsdk/request/n;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/s;->Yp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/s;->Yo:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->aez()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/s;->Yp:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "IPStrategy"

    const-string/jumbo v2, "config, network changed from %s to %s, will NOT update anything"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/s;->Yp:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahn(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/s;->Yo:Lcom/xiaomi/accountsdk/request/n;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/n;->aeO()V

    return-void
.end method
