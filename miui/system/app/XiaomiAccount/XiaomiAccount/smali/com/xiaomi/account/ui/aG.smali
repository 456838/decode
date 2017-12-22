.class final Lcom/xiaomi/account/ui/aG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic fs:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aG;->fs:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/aG;->fs:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->removeDialog(I)V

    return-void
.end method
