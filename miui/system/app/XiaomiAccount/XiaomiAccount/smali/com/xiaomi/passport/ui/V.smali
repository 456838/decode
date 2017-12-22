.class final Lcom/xiaomi/passport/ui/V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic tB:Lcom/xiaomi/passport/ui/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/h;->tu(Lcom/xiaomi/passport/ui/h;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/h;->ti()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/h;->tr(Lcom/xiaomi/passport/ui/h;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0062

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/h;->tq(Lcom/xiaomi/passport/ui/h;)Lcom/xiaomi/passport/ui/i;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/passport/ui/V;->tB:Lcom/xiaomi/passport/ui/h;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/h;->ts(Lcom/xiaomi/passport/ui/h;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/ui/i;->iX(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
