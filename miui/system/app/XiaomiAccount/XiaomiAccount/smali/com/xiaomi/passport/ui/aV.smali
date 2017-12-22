.class final Lcom/xiaomi/passport/ui/aV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic vd:Lcom/xiaomi/passport/ui/B;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/B;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/aV;->vd:Lcom/xiaomi/passport/ui/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aV;->vd:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/B;->xs(Lcom/xiaomi/passport/ui/B;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aV;->vd:Lcom/xiaomi/passport/ui/B;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/B;->xy(Lcom/xiaomi/passport/ui/B;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/aV;->vd:Lcom/xiaomi/passport/ui/B;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/B;->xu(Lcom/xiaomi/passport/ui/B;Z)Z

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
