.class Lcom/xiaomi/passport/v2/ui/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/utils/e;


# instance fields
.field final synthetic Dw:Lcom/xiaomi/passport/v2/ui/h;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/v2/ui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/v2/ui/h;Lcom/xiaomi/passport/v2/ui/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/v2/ui/i;-><init>(Lcom/xiaomi/passport/v2/ui/h;)V

    return-void
.end method


# virtual methods
.method public wK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Ke(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/h;->JR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Kj(Lcom/xiaomi/passport/v2/ui/h;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-static {v0}, Lcom/xiaomi/passport/v2/ui/h;->Ke(Lcom/xiaomi/passport/v2/ui/h;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/i;->Dw:Lcom/xiaomi/passport/v2/ui/h;

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/v2/ui/h;->Il(Ljava/lang/String;)V

    goto :goto_0
.end method
