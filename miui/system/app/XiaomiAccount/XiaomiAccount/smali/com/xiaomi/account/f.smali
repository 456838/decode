.class public Lcom/xiaomi/account/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/a/d;
.implements Lcom/xiaomi/passport/a/c;
.implements Lcom/xiaomi/passport/a/a;


# instance fields
.field private final nQ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public rA(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public rB(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public rC()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lmiui/telephony/a;->aHB()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public rn()I
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/telephony/a;->aHB()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public ro()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public rp()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/account/utils/i;->nS(Landroid/content/Context;)V

    return-void
.end method

.method public rq()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/account/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public rr()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/account/ui/QuickLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public rs()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    const-class v2, Lcom/xiaomi/passport/ui/NotificationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public rt()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public ru(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/telephony/a;->aHF(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rv()I
    .locals 1

    :try_start_0
    invoke-static {}, Lmiui/telephony/a;->aHD()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public rw()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public rx(I)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/f;->nQ:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiui/telephony/a;->aHG(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public ry(Landroid/accounts/Account;)Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/data/j;->mD()Z

    move-result v0

    return v0
.end method

.method public rz(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
