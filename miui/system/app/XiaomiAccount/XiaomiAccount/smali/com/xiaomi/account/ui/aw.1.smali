.class final Lcom/xiaomi/account/ui/aw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fh:Lcom/xiaomi/account/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "account_settings"

    const-string/jumbo v2, "click_sign_out_btn"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    new-instance v1, Lcom/xiaomi/account/utils/f;

    invoke-direct {v1}, Lcom/xiaomi/account/utils/f;-><init>()V

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/h;->aI(Lcom/xiaomi/account/ui/h;Lcom/xiaomi/account/utils/f;)Lcom/xiaomi/account/utils/f;

    iget-object v0, p0, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    invoke-static {v0}, Lcom/xiaomi/account/ui/h;->aH(Lcom/xiaomi/account/ui/h;)Lcom/xiaomi/account/utils/f;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/aw;->fh:Lcom/xiaomi/account/ui/h;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/account/ui/ax;

    invoke-direct {v2, p0}, Lcom/xiaomi/account/ui/ax;-><init>(Lcom/xiaomi/account/ui/aw;)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/utils/f;->ns(Landroid/app/Activity;Lcom/xiaomi/account/utils/h;)V

    return-void
.end method
