.class final Lcom/xiaomi/account/ui/bR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/utils/h;


# instance fields
.field final synthetic hl:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bR;->hl:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iy(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/a/a/a;->aoI()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bR;->hl:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/bR;->hl:Lcom/xiaomi/account/ui/PassTokenExpiredDialog;

    invoke-static {v0, v1, v1}, Lcom/xiaomi/account/ui/PassTokenExpiredDialog;->gf(Lcom/xiaomi/account/ui/PassTokenExpiredDialog;ZZ)V

    goto :goto_0
.end method
