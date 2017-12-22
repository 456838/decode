.class final Lcom/xiaomi/account/ui/bS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-static {v0}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->gc(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->gd(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    const-class v2, Lcom/xiaomi/account/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "service_id"

    iget-object v2, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-virtual {v2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "service_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bS;->hm:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    const/16 v2, 0x10

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
