.class Lcom/xiaomi/passport/ui/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/passport/utils/e;


# instance fields
.field final synthetic rC:Lcom/xiaomi/passport/ui/x;


# direct methods
.method private constructor <init>(Lcom/xiaomi/passport/ui/x;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/passport/ui/x;Lcom/xiaomi/passport/ui/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/ui/y;-><init>(Lcom/xiaomi/passport/ui/x;)V

    return-void
.end method


# virtual methods
.method public wK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/x;->wF(Lcom/xiaomi/passport/ui/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/x;->rw:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    invoke-static {v2}, Lcom/xiaomi/passport/ui/x;->wI(Lcom/xiaomi/passport/ui/x;)Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/xiaomi/passport/ui/x;->gG(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/passport/ui/y;->rC:Lcom/xiaomi/passport/ui/x;

    invoke-static {v0}, Lcom/xiaomi/passport/ui/x;->wJ(Lcom/xiaomi/passport/ui/x;)V

    return-void
.end method
