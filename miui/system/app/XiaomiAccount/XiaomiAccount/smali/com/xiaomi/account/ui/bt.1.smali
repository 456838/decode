.class final Lcom/xiaomi/account/ui/bt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gB:Lcom/xiaomi/account/ui/F;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/F;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bt;->gB:Lcom/xiaomi/account/ui/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/bt;->gB:Lcom/xiaomi/account/ui/F;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/account/ui/F;->eJ(Lcom/xiaomi/account/ui/F;ILandroid/os/Bundle;)V

    return-void
.end method
