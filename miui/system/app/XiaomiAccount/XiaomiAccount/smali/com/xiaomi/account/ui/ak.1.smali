.class final Lcom/xiaomi/account/ui/ak;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eM:Lcom/xiaomi/account/ui/SetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SetPasswordActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ak;->eM:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.VIEW_BIND_PHONE_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/ak;->eM:Lcom/xiaomi/account/ui/SetPasswordActivity;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/SetPasswordActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/account/ui/ak;->eM:Lcom/xiaomi/account/ui/SetPasswordActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/SetPasswordActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
