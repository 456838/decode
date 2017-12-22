.class final Lcom/xiaomi/account/ui/cm;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field final synthetic hM:Lcom/xiaomi/account/ui/S;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/S;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cm;->hM:Lcom/xiaomi/account/ui/S;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/cm;->hM:Lcom/xiaomi/account/ui/S;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x270f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/cm;->hM:Lcom/xiaomi/account/ui/S;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/S;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
