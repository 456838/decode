.class final Lcom/xiaomi/account/ui/ay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fj:Lcom/xiaomi/account/ui/h;

.field final synthetic fk:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/h;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ay;->fj:Lcom/xiaomi/account/ui/h;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ay;->fk:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ay;->fk:Landroid/content/Intent;

    const-string/jumbo v1, "extra_wipe_data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ay;->fk:Landroid/content/Intent;

    const-string/jumbo v2, "extra_wipe_synced_data"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "AccountSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wipe: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; wipeSynced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/xiaomi/account/ui/ay;->fj:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v2, v0, v1}, Lcom/xiaomi/account/ui/h;->aB(ZZ)V

    return-void
.end method
